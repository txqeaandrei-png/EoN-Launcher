package com.eon.launcher.harness;

import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.util.Log;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

final class SyntheticGameRenderer implements GLSurfaceView.Renderer {
    private static final String TAG = "EonOverlayHarness";
    private static final int FLOATS_PER_VERTEX = 6;
    private static final int STRIDE_BYTES = FLOATS_PER_VERTEX * 4;
    private static final short[] CUBE_INDICES = createCubeIndices();
    private static final float[] CUBE_VERTICES = createCubeVertices();
    private static final float[] GRID_VERTICES = createGridVertices();

    private final float[] projection = new float[16];
    private final float[] view = new float[16];
    private final float[] model = new float[16];
    private final float[] viewProjection = new float[16];
    private final float[] mvp = new float[16];
    private final FloatBuffer cubeBuffer = floatBuffer(CUBE_VERTICES);
    private final ShortBuffer indexBuffer = shortBuffer(CUBE_INDICES);
    private final FloatBuffer gridBuffer = floatBuffer(GRID_VERTICES);
    private volatile float orbitYaw;
    private volatile float orbitPitch;
    private volatile boolean running = true;
    private int program;
    private int positionAttribute;
    private int colorAttribute;
    private int matrixUniform;
    private int width = 1;
    private int height = 1;
    private long startTimeNanos;

    @Override
    public void onSurfaceCreated(GL10 gl, EGLConfig config) {
        GLES20.glClearColor(0.035f, 0.055f, 0.065f, 1f);
        GLES20.glEnable(GLES20.GL_DEPTH_TEST);
        GLES20.glEnable(GLES20.GL_CULL_FACE);
        GLES20.glCullFace(GLES20.GL_BACK);
        program = createProgram(VERTEX_SHADER, FRAGMENT_SHADER);
        positionAttribute = GLES20.glGetAttribLocation(program, "aPosition");
        colorAttribute = GLES20.glGetAttribLocation(program, "aColor");
        matrixUniform = GLES20.glGetUniformLocation(program, "uMvp");
        startTimeNanos = System.nanoTime();
    }

    @Override
    public void onSurfaceChanged(GL10 gl, int width, int height) {
        this.width = Math.max(width, 1);
        this.height = Math.max(height, 1);
        GLES20.glViewport(0, 0, width, height);
        Matrix.perspectiveM(projection, 0, 48f, (float) this.width / this.height, 0.1f, 60f);
    }

    @Override
    public void onDrawFrame(GL10 gl) {
        if (!running || program == 0) {
            return;
        }
        GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT | GLES20.GL_DEPTH_BUFFER_BIT);
        GLES20.glUseProgram(program);
        Matrix.setLookAtM(view, 0, 4.0f, 2.8f, 6.2f, 0f, 0f, 0f, 0f, 1f, 0f);
        Matrix.multiplyMM(viewProjection, 0, projection, 0, view, 0);

        Matrix.setIdentityM(model, 0);
        Matrix.translateM(model, 0, 0f, -1.05f, 0f);
        drawGrid();

        float elapsedSeconds = (System.nanoTime() - startTimeNanos) / 1_000_000_000f;
        Matrix.setIdentityM(model, 0);
        Matrix.rotateM(model, 0, elapsedSeconds * 24f + orbitYaw, 0f, 1f, 0f);
        Matrix.rotateM(model, 0, orbitPitch, 1f, 0f, 0f);
        Matrix.multiplyMM(mvp, 0, viewProjection, 0, model, 0);
        GLES20.glUniformMatrix4fv(matrixUniform, 1, false, mvp, 0);
        bindAttributes(cubeBuffer);
        indexBuffer.position(0);
        GLES20.glDrawElements(GLES20.GL_TRIANGLES, CUBE_INDICES.length,
                GLES20.GL_UNSIGNED_SHORT, indexBuffer);
        GLES20.glDisableVertexAttribArray(positionAttribute);
        GLES20.glDisableVertexAttribArray(colorAttribute);
    }

    void orbit(float deltaX, float deltaY) {
        orbitYaw += deltaX * 0.45f;
        orbitPitch = Math.max(-35f, Math.min(35f, orbitPitch + deltaY * 0.25f));
    }

    void stop() {
        running = false;
    }

    private void drawGrid() {
        Matrix.multiplyMM(mvp, 0, viewProjection, 0, model, 0);
        GLES20.glUniformMatrix4fv(matrixUniform, 1, false, mvp, 0);
        bindAttributes(gridBuffer);
        GLES20.glDrawArrays(GLES20.GL_LINES, 0, GRID_VERTICES.length / FLOATS_PER_VERTEX);
        GLES20.glDisableVertexAttribArray(positionAttribute);
        GLES20.glDisableVertexAttribArray(colorAttribute);
    }

    private void bindAttributes(FloatBuffer vertices) {
        vertices.position(0);
        GLES20.glEnableVertexAttribArray(positionAttribute);
        GLES20.glVertexAttribPointer(positionAttribute, 3, GLES20.GL_FLOAT, false, STRIDE_BYTES, vertices);
        vertices.position(3);
        GLES20.glEnableVertexAttribArray(colorAttribute);
        GLES20.glVertexAttribPointer(colorAttribute, 3, GLES20.GL_FLOAT, false, STRIDE_BYTES, vertices);
    }

    private static int createProgram(String vertexSource, String fragmentSource) {
        int vertex = compileShader(GLES20.GL_VERTEX_SHADER, vertexSource);
        int fragment = compileShader(GLES20.GL_FRAGMENT_SHADER, fragmentSource);
        int program = GLES20.glCreateProgram();
        GLES20.glAttachShader(program, vertex);
        GLES20.glAttachShader(program, fragment);
        GLES20.glLinkProgram(program);
        int[] status = new int[1];
        GLES20.glGetProgramiv(program, GLES20.GL_LINK_STATUS, status, 0);
        if (status[0] == 0) {
            String log = GLES20.glGetProgramInfoLog(program);
            GLES20.glDeleteProgram(program);
            throw new IllegalStateException("Synthetic scene shader link failed: " + log);
        }
        GLES20.glDeleteShader(vertex);
        GLES20.glDeleteShader(fragment);
        return program;
    }

    private static int compileShader(int type, String source) {
        int shader = GLES20.glCreateShader(type);
        GLES20.glShaderSource(shader, source);
        GLES20.glCompileShader(shader);
        int[] status = new int[1];
        GLES20.glGetShaderiv(shader, GLES20.GL_COMPILE_STATUS, status, 0);
        if (status[0] == 0) {
            String log = GLES20.glGetShaderInfoLog(shader);
            GLES20.glDeleteShader(shader);
            Log.e(TAG, "Synthetic scene shader compile failed: " + log);
            throw new IllegalStateException("Synthetic scene shader compile failed: " + log);
        }
        return shader;
    }

    private static float[] createCubeVertices() {
        float[][] faces = {
                {-1, -1, 1, 1, 0.25f, 0.22f, 1, -1, 1, 1, 0.25f, 0.22f, 1, 1, 1, 1, 0.25f, 0.22f, -1, 1, 1, 1, 0.25f, 0.22f},
                {1, -1, -1, 0.25f, 0.78f, 0.65f, -1, -1, -1, 0.25f, 0.78f, 0.65f, -1, 1, -1, 0.25f, 0.78f, 0.65f, 1, 1, -1, 0.25f, 0.78f, 0.65f},
                {-1, 1, 1, 0.24f, 0.72f, 0.90f, 1, 1, 1, 0.24f, 0.72f, 0.90f, 1, 1, -1, 0.24f, 0.72f, 0.90f, -1, 1, -1, 0.24f, 0.72f, 0.90f},
                {-1, -1, -1, 0.12f, 0.43f, 0.58f, 1, -1, -1, 0.12f, 0.43f, 0.58f, 1, -1, 1, 0.12f, 0.43f, 0.58f, -1, -1, 1, 0.12f, 0.43f, 0.58f},
                {1, -1, 1, 0.16f, 0.62f, 0.55f, 1, -1, -1, 0.16f, 0.62f, 0.55f, 1, 1, -1, 0.16f, 0.62f, 0.55f, 1, 1, 1, 0.16f, 0.62f, 0.55f},
                {-1, -1, -1, 0.12f, 0.48f, 0.42f, -1, -1, 1, 0.12f, 0.48f, 0.42f, -1, 1, 1, 0.12f, 0.48f, 0.42f, -1, 1, -1, 0.12f, 0.48f, 0.42f}
        };
        float[] vertices = new float[faces.length * 24];
        int offset = 0;
        for (float[] face : faces) {
            System.arraycopy(face, 0, vertices, offset, face.length);
            offset += face.length;
        }
        return vertices;
    }

    private static short[] createCubeIndices() {
        short[] indices = new short[36];
        for (int face = 0; face < 6; face++) {
            short base = (short) (face * 4);
            int offset = face * 6;
            indices[offset] = base;
            indices[offset + 1] = (short) (base + 1);
            indices[offset + 2] = (short) (base + 2);
            indices[offset + 3] = base;
            indices[offset + 4] = (short) (base + 2);
            indices[offset + 5] = (short) (base + 3);
        }
        return indices;
    }

    private static float[] createGridVertices() {
        int lineCount = 22;
        float[] vertices = new float[lineCount * 2 * FLOATS_PER_VERTEX];
        int offset = 0;
        for (int coordinate = -5; coordinate <= 5; coordinate++) {
            float brightness = coordinate == 0 ? 0.42f : 0.20f;
            offset = appendGridVertex(vertices, offset, coordinate, 0f, -5f, brightness);
            offset = appendGridVertex(vertices, offset, coordinate, 0f, 5f, brightness);
            offset = appendGridVertex(vertices, offset, -5f, 0f, coordinate, brightness);
            offset = appendGridVertex(vertices, offset, 5f, 0f, coordinate, brightness);
        }
        return vertices;
    }

    private static int appendGridVertex(float[] vertices, int offset, float x, float y, float z, float brightness) {
        vertices[offset++] = x;
        vertices[offset++] = y;
        vertices[offset++] = z;
        vertices[offset++] = brightness * 0.58f;
        vertices[offset++] = brightness;
        vertices[offset++] = brightness * 0.92f;
        return offset;
    }

    private static FloatBuffer floatBuffer(float[] values) {
        FloatBuffer buffer = ByteBuffer.allocateDirect(values.length * 4)
                .order(ByteOrder.nativeOrder()).asFloatBuffer();
        buffer.put(values).position(0);
        return buffer;
    }

    private static ShortBuffer shortBuffer(short[] values) {
        ShortBuffer buffer = ByteBuffer.allocateDirect(values.length * 2)
                .order(ByteOrder.nativeOrder()).asShortBuffer();
        buffer.put(values).position(0);
        return buffer;
    }

    private static final String VERTEX_SHADER =
            "attribute vec3 aPosition;\n" +
            "attribute vec3 aColor;\n" +
            "uniform mat4 uMvp;\n" +
            "varying vec3 vColor;\n" +
            "void main() { gl_Position = uMvp * vec4(aPosition, 1.0); vColor = aColor; }";

    private static final String FRAGMENT_SHADER =
            "precision mediump float;\n" +
            "varying vec3 vColor;\n" +
            "void main() { gl_FragColor = vec4(vColor, 1.0); }";
}