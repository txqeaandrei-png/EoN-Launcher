.class public final Lcom/braze/Braze;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/braze/IBraze;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braze/Braze$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0015\u0008\u0007\u0018\u0000 \u00c4\u00022\u00020\u0001:\u0002\u00c4\u0002B\u0011\u0008\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0017\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0019\u0010\u001e\u001a\u00020\u000b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0019\u0010 \u001a\u00020\u000b2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016\u00a2\u0006\u0004\u0008 \u0010\u001fJ\u0019\u0010\"\u001a\u00020\u000b2\u0008\u0010!\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J#\u0010\"\u001a\u00020\u000b2\u0008\u0010!\u001a\u0004\u0018\u00010\u00182\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008\"\u0010&J-\u0010+\u001a\u00020\u000b2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00182\u0008\u0010(\u001a\u0004\u0018\u00010\u00182\u0008\u0010*\u001a\u0004\u0018\u00010)H\u0016\u00a2\u0006\u0004\u0008+\u0010,J7\u0010+\u001a\u00020\u000b2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00182\u0008\u0010(\u001a\u0004\u0018\u00010\u00182\u0008\u0010*\u001a\u0004\u0018\u00010)2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008+\u0010-J5\u0010+\u001a\u00020\u000b2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00182\u0008\u0010(\u001a\u0004\u0018\u00010\u00182\u0008\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010/\u001a\u00020.H\u0016\u00a2\u0006\u0004\u0008+\u00100J?\u0010+\u001a\u00020\u000b2\u0008\u0010\'\u001a\u0004\u0018\u00010\u00182\u0008\u0010(\u001a\u0004\u0018\u00010\u00182\u0008\u0010*\u001a\u0004\u0018\u00010)2\u0006\u0010/\u001a\u00020.2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008+\u00101J\u0019\u00103\u001a\u00020\u000b2\u0008\u00102\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u00083\u0010#J\u0019\u00103\u001a\u00020\u000b2\u0008\u00105\u001a\u0004\u0018\u000104H\u0016\u00a2\u0006\u0004\u00083\u00106J-\u00109\u001a\u00020\u000b2\u0008\u00102\u001a\u0004\u0018\u00010\u00182\u0008\u00107\u001a\u0004\u0018\u00010\u00182\u0008\u00108\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u00089\u0010:J#\u0010<\u001a\u00020\u000b2\u0008\u00102\u001a\u0004\u0018\u00010\u00182\u0008\u0010;\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008<\u0010=J\u000f\u0010>\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008>\u0010\u0013J\u000f\u0010?\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008?\u0010\u0013J\u000f\u0010@\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008@\u0010\u0013J\u0017\u0010B\u001a\u00020\u000b2\u0006\u0010A\u001a\u00020\tH\u0017\u00a2\u0006\u0004\u0008B\u0010\rJ\u000f\u0010B\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008B\u0010\u0013J\u000f\u0010C\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008C\u0010\u0013J\u000f\u0010D\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008D\u0010\u0013J\u0015\u0010G\u001a\u0008\u0012\u0004\u0012\u00020F0EH\u0016\u00a2\u0006\u0004\u0008G\u0010HJ\u0019\u0010J\u001a\u0004\u0018\u00010F2\u0006\u0010I\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008J\u0010KJ\u0017\u0010L\u001a\u00020\u000b2\u0006\u0010I\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008L\u0010#J\u001d\u0010N\u001a\u00020\u000b2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00180EH\u0016\u00a2\u0006\u0004\u0008N\u0010OJ-\u0010N\u001a\u00020\u000b2\u000c\u0010M\u001a\u0008\u0012\u0004\u0012\u00020\u00180E2\u000e\u0010R\u001a\n\u0012\u0004\u0012\u00020Q\u0018\u00010PH\u0016\u00a2\u0006\u0004\u0008N\u0010SJ\u0019\u0010U\u001a\u0004\u0018\u00010T2\u0006\u0010I\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008U\u0010VJ\u0017\u0010X\u001a\u00020\t2\u0006\u0010W\u001a\u00020\u0018H\u0016\u00a2\u0006\u0004\u0008X\u0010\u001bJ!\u0010Z\u001a\u00020\u000b2\u0006\u0010W\u001a\u00020\u00182\u0008\u0010Y\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008Z\u0010=J\u000f\u0010[\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008[\u0010\u0013J\u001d\u0010_\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020]0\\H\u0016\u00a2\u0006\u0004\u0008_\u0010`J\u001d\u0010b\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020a0\\H\u0016\u00a2\u0006\u0004\u0008b\u0010`J\u001d\u0010d\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020c0\\H\u0016\u00a2\u0006\u0004\u0008d\u0010`J\u001d\u0010f\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020e0\\H\u0016\u00a2\u0006\u0004\u0008f\u0010`J\u001d\u0010g\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020Q0\\H\u0016\u00a2\u0006\u0004\u0008g\u0010`J\u001d\u0010i\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020h0\\H\u0016\u00a2\u0006\u0004\u0008i\u0010`J\u001d\u0010k\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020j0\\H\u0016\u00a2\u0006\u0004\u0008k\u0010`J\u001d\u0010m\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020l0\\H\u0016\u00a2\u0006\u0004\u0008m\u0010`J\u001d\u0010o\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020n0\\H\u0016\u00a2\u0006\u0004\u0008o\u0010`J\u001d\u0010q\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020p0\\H\u0016\u00a2\u0006\u0004\u0008q\u0010`J\u001d\u0010s\u001a\u00020\u000b2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00020r0\\H\u0016\u00a2\u0006\u0004\u0008s\u0010`J1\u0010w\u001a\u00020\u000b\"\u0004\u0008\u0000\u0010t2\u000c\u0010^\u001a\u0008\u0012\u0004\u0012\u00028\u00000\\2\u000c\u0010v\u001a\u0008\u0012\u0004\u0012\u00028\u00000uH\u0016\u00a2\u0006\u0004\u0008w\u0010xJ3\u0010y\u001a\u00020\u000b\"\u0004\u0008\u0000\u0010t2\u000e\u0010^\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\\2\u000c\u0010v\u001a\u0008\u0012\u0004\u0012\u00028\u00000uH\u0016\u00a2\u0006\u0004\u0008y\u0010xJ\u0019\u0010{\u001a\u00020\u000b2\u0008\u0010z\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008{\u0010#J#\u0010{\u001a\u00020\u000b2\u0008\u0010z\u001a\u0004\u0018\u00010\u00182\u0008\u0010|\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0004\u0008{\u0010=J\u001d\u0010~\u001a\u00020\u000b2\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020}0PH\u0016\u00a2\u0006\u0004\u0008~\u0010\u007fJ\u001f\u0010\u0080\u0001\u001a\u00020\u000b2\u000c\u0010R\u001a\u0008\u0012\u0004\u0012\u00020\u00180PH\u0016\u00a2\u0006\u0005\u0008\u0080\u0001\u0010\u007fJ\u0012\u0010\u0081\u0001\u001a\u00020.H\u0016\u00a2\u0006\u0006\u0008\u0081\u0001\u0010\u0082\u0001J\u0012\u0010\u0083\u0001\u001a\u00020.H\u0016\u00a2\u0006\u0006\u0008\u0083\u0001\u0010\u0082\u0001J\u0013\u0010\u0085\u0001\u001a\u00030\u0084\u0001H\u0016\u00a2\u0006\u0006\u0008\u0085\u0001\u0010\u0086\u0001J\u001a\u0010\u0088\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0087\u0001\u0018\u00010EH\u0016\u00a2\u0006\u0005\u0008\u0088\u0001\u0010HJ\u0010\u0010\u0089\u0001\u001a\u00020\t\u00a2\u0006\u0006\u0008\u0089\u0001\u0010\u008a\u0001J \u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0087\u00012\t\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u008d\u0001J!\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0087\u00012\n\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008e\u0001H\u0016\u00a2\u0006\u0006\u0008\u008c\u0001\u0010\u0090\u0001J\u001c\u0010\u0092\u0001\u001a\u00020\u000b2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0018H\u0017\u00a2\u0006\u0005\u0008\u0092\u0001\u0010#J\u001c\u0010\u0093\u0001\u001a\u00020\u000b2\t\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0018H\u0017\u00a2\u0006\u0005\u0008\u0093\u0001\u0010#J \u0010\u0096\u0001\u001a\u0005\u0018\u00010\u0095\u00012\t\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u0018H\u0016\u00a2\u0006\u0006\u0008\u0096\u0001\u0010\u0097\u0001J&\u0010\u009b\u0001\u001a\u00020\u000b2\u0008\u0010\u0099\u0001\u001a\u00030\u0098\u00012\u0008\u0010\u009a\u0001\u001a\u00030\u0098\u0001H\u0016\u00a2\u0006\u0006\u0008\u009b\u0001\u0010\u009c\u0001J\u0011\u0010\u009d\u0001\u001a\u00020\u000bH\u0016\u00a2\u0006\u0005\u0008\u009d\u0001\u0010\u0013J$\u0010\u00a0\u0001\u001a\u00020\u000b2\u0007\u0010\u009e\u0001\u001a\u00020\u00182\u0007\u0010\u009f\u0001\u001a\u00020\tH\u0016\u00a2\u0006\u0006\u0008\u00a0\u0001\u0010\u00a1\u0001J\u001a\u0010\u00a3\u0001\u001a\u00020\u000b2\u0007\u0010\u00a2\u0001\u001a\u00020\u0018H\u0016\u00a2\u0006\u0005\u0008\u00a3\u0001\u0010#J)\u0010\u00a9\u0001\u001a\u00020\u000b2\t\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u00182\n\u0010\u00a6\u0001\u001a\u0005\u0018\u00010\u00a5\u0001H\u0000\u00a2\u0006\u0006\u0008\u00a7\u0001\u0010\u00a8\u0001J\u001e\u0010\u00ae\u0001\u001a\u00020\u000b2\n\u0010\u00ab\u0001\u001a\u0005\u0018\u00010\u00aa\u0001H\u0000\u00a2\u0006\u0006\u0008\u00ac\u0001\u0010\u00ad\u0001J\u001a\u0010\u00ae\u0001\u001a\u00020\u000b2\u0007\u0010\u00af\u0001\u001a\u00020\tH\u0000\u00a2\u0006\u0005\u0008\u00ac\u0001\u0010\rJ$\u0010\u00b2\u0001\u001a\u00020\u000b2\u0007\u0010\u00b0\u0001\u001a\u00020\u00182\u0008\u0010z\u001a\u0004\u0018\u00010\u0018H\u0000\u00a2\u0006\u0005\u0008\u00b1\u0001\u0010=J\u001c\u0010\u00b4\u0001\u001a\u00020\u000b2\u0008\u0010\u00ab\u0001\u001a\u00030\u00aa\u0001H\u0000\u00a2\u0006\u0006\u0008\u00b3\u0001\u0010\u00ad\u0001J\u0011\u0010\u00b6\u0001\u001a\u00020\u000bH\u0000\u00a2\u0006\u0005\u0008\u00b5\u0001\u0010\u0013J\u0011\u0010\u00b8\u0001\u001a\u00020\u000bH\u0000\u00a2\u0006\u0005\u0008\u00b7\u0001\u0010\u0013J\u0019\u0010\u00ba\u0001\u001a\u00020\u000b2\u0006\u00105\u001a\u000204H\u0000\u00a2\u0006\u0005\u0008\u00b9\u0001\u00106J\u0011\u0010\u00bc\u0001\u001a\u00020\u000bH\u0000\u00a2\u0006\u0005\u0008\u00bb\u0001\u0010\u0013J\u0011\u0010\u00be\u0001\u001a\u00020\u000bH\u0000\u00a2\u0006\u0005\u0008\u00bd\u0001\u0010\u0013J\u001b\u0010\u00c2\u0001\u001a\u00020\u000b2\u0007\u0010\u00bf\u0001\u001a\u00020]H\u0000\u00a2\u0006\u0006\u0008\u00c0\u0001\u0010\u00c1\u0001J\u001b\u0010\u00c4\u0001\u001a\u00020\u000b2\u0007\u0010\u00bf\u0001\u001a\u00020]H\u0000\u00a2\u0006\u0006\u0008\u00c3\u0001\u0010\u00c1\u0001J&\u0010\u00cb\u0001\u001a\u00020\u000b2\u0008\u0010\u00c6\u0001\u001a\u00030\u00c5\u00012\u0008\u0010\u00c8\u0001\u001a\u00030\u00c7\u0001H\u0000\u00a2\u0006\u0006\u0008\u00c9\u0001\u0010\u00ca\u0001J$\u0010\u00cf\u0001\u001a\u00020\u000b2\u0006\u00102\u001a\u00020\u00182\u0008\u0010\u00cc\u0001\u001a\u00030\u0084\u0001H\u0000\u00a2\u0006\u0006\u0008\u00cd\u0001\u0010\u00ce\u0001J\u001c\u0010\u00d2\u0001\u001a\u00020\u000b2\u0008\u0010\u00cc\u0001\u001a\u00030\u0084\u0001H\u0000\u00a2\u0006\u0006\u0008\u00d0\u0001\u0010\u00d1\u0001J\u0011\u0010\u00d4\u0001\u001a\u00020\u000bH\u0000\u00a2\u0006\u0005\u0008\u00d3\u0001\u0010\u0013J\u001a\u0010\u00d7\u0001\u001a\u00020\u000b2\u0007\u0010\u00d5\u0001\u001a\u00020\u0018H\u0000\u00a2\u0006\u0005\u0008\u00d6\u0001\u0010#J\u001a\u0010\u00da\u0001\u001a\u00020\t2\u0007\u0010\u00d8\u0001\u001a\u00020\u0018H\u0000\u00a2\u0006\u0005\u0008\u00d9\u0001\u0010\u001bJ\u0011\u0010\u00dc\u0001\u001a\u00020\u000bH\u0001\u00a2\u0006\u0005\u0008\u00db\u0001\u0010\u0013Jv\u0010\u00ea\u0001\u001a\u00028\u0000\"\u0004\u0008\u0000\u0010t2\u0007\u0010\u00dd\u0001\u001a\u00028\u00002\u000e\u0010\u00df\u0001\u001a\t\u0012\u0004\u0012\u00020\u00180\u00de\u00012\t\u0008\u0002\u0010\u00e0\u0001\u001a\u00020\t2\t\u0008\u0002\u0010\u00e1\u0001\u001a\u00020\t2-\u0010\u00e7\u0001\u001a(\u0008\u0001\u0012\u0005\u0012\u00030\u00e3\u0001\u0012\u000b\u0012\t\u0012\u0004\u0012\u00028\u00000\u00e4\u0001\u0012\u0007\u0012\u0005\u0018\u00010\u00e5\u00010\u00e2\u0001\u00a2\u0006\u0003\u0008\u00e6\u0001H\u0001\u00a2\u0006\u0006\u0008\u00e8\u0001\u0010\u00e9\u0001JH\u0010\u00ed\u0001\u001a\u00020\u000b2\u000e\u0010\u00df\u0001\u001a\t\u0012\u0004\u0012\u00020\u00180\u00de\u00012\t\u0008\u0002\u0010\u00e0\u0001\u001a\u00020\t2\t\u0008\u0002\u0010\u00e1\u0001\u001a\u00020\t2\u000e\u0010\u00e7\u0001\u001a\t\u0012\u0004\u0012\u00020\u000b0\u00de\u0001H\u0001\u00a2\u0006\u0006\u0008\u00eb\u0001\u0010\u00ec\u0001J\u001b\u0010\u00f1\u0001\u001a\u00030\u00ee\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0006\u0008\u00ef\u0001\u0010\u00f0\u0001R*\u0010\u00f3\u0001\u001a\u00030\u00f2\u00018\u0016@\u0016X\u0096.\u00a2\u0006\u0018\n\u0006\u0008\u00f3\u0001\u0010\u00f4\u0001\u001a\u0006\u0008\u00f5\u0001\u0010\u00f6\u0001\"\u0006\u0008\u00f7\u0001\u0010\u00f8\u0001R\u0019\u0010\u00f9\u0001\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u00f9\u0001\u0010\u00fa\u0001R\u001a\u0010\u00fc\u0001\u001a\u00030\u00fb\u00018\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00fc\u0001\u0010\u00fd\u0001R\u0019\u0010\u00fe\u0001\u001a\u00020}8\u0002@\u0002X\u0082.\u00a2\u0006\u0008\n\u0006\u0008\u00fe\u0001\u0010\u00ff\u0001R2\u0010\u0080\u0002\u001a\u0004\u0018\u00010\t8\u0000@\u0000X\u0081\u000e\u00a2\u0006\u001f\n\u0006\u0008\u0080\u0002\u0010\u0081\u0002\u0012\u0005\u0008\u0086\u0002\u0010\u0013\u001a\u0006\u0008\u0082\u0002\u0010\u0083\u0002\"\u0006\u0008\u0084\u0002\u0010\u0085\u0002R\u0019\u0010\u0087\u0002\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0008\n\u0006\u0008\u0087\u0002\u0010\u0088\u0002R1\u0010\u008a\u0002\u001a\u00030\u0089\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u001f\n\u0006\u0008\u008a\u0002\u0010\u008b\u0002\u0012\u0005\u0008\u0090\u0002\u0010\u0013\u001a\u0006\u0008\u008c\u0002\u0010\u008d\u0002\"\u0006\u0008\u008e\u0002\u0010\u008f\u0002R1\u0010\u0092\u0002\u001a\u00030\u0091\u00028\u0000@\u0000X\u0081\u000e\u00a2\u0006\u001f\n\u0006\u0008\u0092\u0002\u0010\u0093\u0002\u0012\u0005\u0008\u0098\u0002\u0010\u0013\u001a\u0006\u0008\u0094\u0002\u0010\u0095\u0002\"\u0006\u0008\u0096\u0002\u0010\u0097\u0002R1\u0010\u009a\u0002\u001a\u00030\u0099\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u001f\n\u0006\u0008\u009a\u0002\u0010\u009b\u0002\u0012\u0005\u0008\u00a0\u0002\u0010\u0013\u001a\u0006\u0008\u009c\u0002\u0010\u009d\u0002\"\u0006\u0008\u009e\u0002\u0010\u009f\u0002R1\u0010\u00a1\u0002\u001a\u00030\u00ee\u00018\u0000@\u0000X\u0081.\u00a2\u0006\u001f\n\u0006\u0008\u00a1\u0002\u0010\u00a2\u0002\u0012\u0005\u0008\u00a7\u0002\u0010\u0013\u001a\u0006\u0008\u00a3\u0002\u0010\u00a4\u0002\"\u0006\u0008\u00a5\u0002\u0010\u00a6\u0002R1\u0010\u00a9\u0002\u001a\u00030\u00a8\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u001f\n\u0006\u0008\u00a9\u0002\u0010\u00aa\u0002\u0012\u0005\u0008\u00af\u0002\u0010\u0013\u001a\u0006\u0008\u00ab\u0002\u0010\u00ac\u0002\"\u0006\u0008\u00ad\u0002\u0010\u00ae\u0002R1\u0010\u00b1\u0002\u001a\u00030\u00b0\u00028\u0000@\u0000X\u0081.\u00a2\u0006\u001f\n\u0006\u0008\u00b1\u0002\u0010\u00b2\u0002\u0012\u0005\u0008\u00b7\u0002\u0010\u0013\u001a\u0006\u0008\u00b3\u0002\u0010\u00b4\u0002\"\u0006\u0008\u00b5\u0002\u0010\u00b6\u0002R\u0019\u0010\u00ba\u0002\u001a\u0004\u0018\u00010c8BX\u0082\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00b8\u0002\u0010\u00b9\u0002R\u0017\u0010\u00bd\u0002\u001a\u00020\u00188VX\u0096\u0004\u00a2\u0006\u0008\u001a\u0006\u0008\u00bb\u0002\u0010\u00bc\u0002R\u0018\u0010\u00bf\u0002\u001a\u0004\u0018\u00010}8VX\u0096\u0004\u00a2\u0006\u0007\u001a\u0005\u0008~\u0010\u00be\u0002R-\u0010\u00c3\u0002\u001a\u0004\u0018\u00010\u00182\t\u0010\u00c0\u0002\u001a\u0004\u0018\u00010\u00188V@VX\u0096\u000e\u00a2\u0006\u000f\u001a\u0006\u0008\u00c1\u0002\u0010\u00bc\u0002\"\u0005\u0008\u00c2\u0002\u0010#\u00a8\u0006\u00c5\u0002"
    }
    d2 = {
        "Lcom/braze/Braze;",
        "Lcom/braze/IBraze;",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "Lcom/braze/managers/d0;",
        "getDeviceDataProvider",
        "()Lcom/braze/managers/d0;",
        "",
        "isOffline",
        "",
        "setSyncPolicyOfflineStatus",
        "(Z)V",
        "",
        "throwable",
        "publishError",
        "(Ljava/lang/Throwable;)V",
        "verifyProperSdkSetup",
        "()V",
        "Lcom/braze/managers/u0;",
        "dependencyProvider",
        "setUserSpecificMemberVariablesAndStartDispatch",
        "(Lcom/braze/managers/u0;)V",
        "",
        "key",
        "isEphemeralEventKey",
        "(Ljava/lang/String;)Z",
        "Landroid/app/Activity;",
        "activity",
        "openSession",
        "(Landroid/app/Activity;)V",
        "closeSession",
        "eventName",
        "logCustomEvent",
        "(Ljava/lang/String;)V",
        "Lcom/braze/models/outgoing/BrazeProperties;",
        "properties",
        "(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V",
        "productId",
        "currencyCode",
        "Ljava/math/BigDecimal;",
        "price",
        "logPurchase",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/braze/models/outgoing/BrazeProperties;)V",
        "",
        "quantity",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V",
        "campaignId",
        "logPushNotificationOpened",
        "Landroid/content/Intent;",
        "intent",
        "(Landroid/content/Intent;)V",
        "actionId",
        "actionType",
        "logPushNotificationActionClicked",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "pageId",
        "logPushStoryPageClicked",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "logFeedDisplayed",
        "requestFeedRefreshFromCache",
        "requestFeedRefresh",
        "fromCache",
        "requestContentCardsRefresh",
        "requestContentCardsRefreshFromCache",
        "refreshFeatureFlags",
        "",
        "Lcom/braze/models/FeatureFlag;",
        "getAllFeatureFlags",
        "()Ljava/util/List;",
        "id",
        "getFeatureFlag",
        "(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;",
        "logFeatureFlagImpression",
        "ids",
        "requestBannersRefresh",
        "(Ljava/util/List;)V",
        "Lcom/braze/events/IValueCallback;",
        "Lcom/braze/events/BannersUpdatedEvent;",
        "completionCallback",
        "(Ljava/util/List;Lcom/braze/events/IValueCallback;)V",
        "Lcom/braze/models/Banner;",
        "getBanner",
        "(Ljava/lang/String;)Lcom/braze/models/Banner;",
        "placementId",
        "logBannerImpression",
        "buttonId",
        "logBannerClick",
        "requestImmediateDataFlush",
        "Lcom/braze/events/IEventSubscriber;",
        "Lcom/braze/events/InAppMessageEvent;",
        "subscriber",
        "subscribeToNewInAppMessages",
        "(Lcom/braze/events/IEventSubscriber;)V",
        "Lcom/braze/events/NoMatchingTriggerEvent;",
        "subscribeToNoMatchingTriggerForEvent",
        "Lcom/braze/events/ContentCardsUpdatedEvent;",
        "subscribeToContentCardsUpdates",
        "Lcom/braze/events/FeatureFlagsUpdatedEvent;",
        "subscribeToFeatureFlagsUpdates",
        "subscribeToBannersUpdates",
        "Lcom/braze/events/internal/b;",
        "subscribeToBannersErrors",
        "Lcom/braze/events/FeedUpdatedEvent;",
        "subscribeToFeedUpdates",
        "Lcom/braze/events/SessionStateChangedEvent;",
        "subscribeToSessionUpdates",
        "Lcom/braze/events/BrazeNetworkFailureEvent;",
        "subscribeToNetworkFailures",
        "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;",
        "subscribeToSdkAuthenticationFailures",
        "Lcom/braze/events/BrazePushEvent;",
        "subscribeToPushNotificationEvents",
        "T",
        "Ljava/lang/Class;",
        "eventClass",
        "addSingleSynchronousSubscription",
        "(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V",
        "removeSingleSubscription",
        "userId",
        "changeUser",
        "sdkAuthSignature",
        "Lcom/braze/BrazeUser;",
        "getCurrentUser",
        "(Lcom/braze/events/IValueCallback;)V",
        "getDeviceIdAsync",
        "getContentCardCount",
        "()I",
        "getContentCardUnviewedCount",
        "",
        "getContentCardsLastUpdatedInSecondsFromEpoch",
        "()J",
        "Lcom/braze/models/cards/Card;",
        "getCachedContentCards",
        "areCachedContentCardsStale",
        "()Z",
        "contentCardString",
        "deserializeContentCard",
        "(Ljava/lang/String;)Lcom/braze/models/cards/Card;",
        "Lorg/json/JSONObject;",
        "contentCardJson",
        "(Lorg/json/JSONObject;)Lcom/braze/models/cards/Card;",
        "cardId",
        "logFeedCardImpression",
        "logFeedCardClick",
        "inAppMessageString",
        "Lcom/braze/models/inappmessage/IInAppMessage;",
        "deserializeInAppMessageString",
        "(Ljava/lang/String;)Lcom/braze/models/inappmessage/IInAppMessage;",
        "",
        "latitude",
        "longitude",
        "requestGeofences",
        "(DD)V",
        "requestLocationInitialization",
        "googleAdvertisingId",
        "isLimitAdTrackingEnabled",
        "setGoogleAdvertisingId",
        "(Ljava/lang/String;Z)V",
        "signature",
        "setSdkAuthenticationSignature",
        "geofenceId",
        "Lcom/braze/enums/GeofenceTransitionType;",
        "transitionType",
        "recordGeofenceTransition$android_sdk_base_release",
        "(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V",
        "recordGeofenceTransition",
        "Lcom/braze/models/IBrazeLocation;",
        "location",
        "requestGeofenceRefresh$android_sdk_base_release",
        "(Lcom/braze/models/IBrazeLocation;)V",
        "requestGeofenceRefresh",
        "ignoreRateLimit",
        "serializedCardJson",
        "addSerializedCardJsonToStorage$android_sdk_base_release",
        "addSerializedCardJsonToStorage",
        "logLocationRecordedEventFromLocationUpdate$android_sdk_base_release",
        "logLocationRecordedEventFromLocationUpdate",
        "requestGeofencesInitialization$android_sdk_base_release",
        "requestGeofencesInitialization",
        "requestSingleLocationUpdate$android_sdk_base_release",
        "requestSingleLocationUpdate",
        "handleInAppMessageTestPush$android_sdk_base_release",
        "handleInAppMessageTestPush",
        "handleInternalBannerRefresh$android_sdk_base_release",
        "handleInternalBannerRefresh",
        "applyPendingRuntimeConfiguration$android_sdk_base_release",
        "applyPendingRuntimeConfiguration",
        "event",
        "retryInAppMessage$android_sdk_base_release",
        "(Lcom/braze/events/InAppMessageEvent;)V",
        "retryInAppMessage",
        "reenqueueInAppMessage$android_sdk_base_release",
        "reenqueueInAppMessage",
        "Lcom/braze/enums/BrazePushEventType;",
        "pushActionType",
        "Lcom/braze/models/push/BrazeNotificationPayload;",
        "payload",
        "publishBrazePushAction$android_sdk_base_release",
        "(Lcom/braze/enums/BrazePushEventType;Lcom/braze/models/push/BrazeNotificationPayload;)V",
        "publishBrazePushAction",
        "timeInMs",
        "logPushDelivery$android_sdk_base_release",
        "(Ljava/lang/String;J)V",
        "logPushDelivery",
        "schedulePushDelivery$android_sdk_base_release",
        "(J)V",
        "schedulePushDelivery",
        "performPushDeliveryFlush$android_sdk_base_release",
        "performPushDeliveryFlush",
        "campaign",
        "logPushMaxCampaign$android_sdk_base_release",
        "logPushMaxCampaign",
        "pushId",
        "validateAndStorePushId$android_sdk_base_release",
        "validateAndStorePushId",
        "waitForUserDependencyThread$android_sdk_base_release",
        "waitForUserDependencyThread",
        "defaultValueOnException",
        "Lkotlin/Function0;",
        "errorLog",
        "earlyReturnIfDisabled",
        "earlyReturnIfUdmUninitialized",
        "Lkotlin/Function2;",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "block",
        "runForResult$android_sdk_base_release",
        "(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "runForResult",
        "run$android_sdk_base_release",
        "(Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;)V",
        "run",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "getConfigurationProviderSafe$android_sdk_base_release",
        "(Landroid/content/Context;)Lcom/braze/configuration/BrazeConfigurationProvider;",
        "getConfigurationProviderSafe",
        "Lcom/braze/images/IBrazeImageLoader;",
        "imageLoader",
        "Lcom/braze/images/IBrazeImageLoader;",
        "getImageLoader",
        "()Lcom/braze/images/IBrazeImageLoader;",
        "setImageLoader",
        "(Lcom/braze/images/IBrazeImageLoader;)V",
        "applicationContext",
        "Landroid/content/Context;",
        "Lcom/braze/configuration/e;",
        "offlineUserStorageProvider",
        "Lcom/braze/configuration/e;",
        "brazeUser",
        "Lcom/braze/BrazeUser;",
        "isApiKeyPresent",
        "Ljava/lang/Boolean;",
        "isApiKeyPresent$android_sdk_base_release",
        "()Ljava/lang/Boolean;",
        "setApiKeyPresent$android_sdk_base_release",
        "(Ljava/lang/Boolean;)V",
        "isApiKeyPresent$android_sdk_base_release$annotations",
        "isInstanceStopped",
        "Z",
        "Lcom/braze/managers/e0;",
        "deviceIdProvider",
        "Lcom/braze/managers/e0;",
        "getDeviceIdProvider$android_sdk_base_release",
        "()Lcom/braze/managers/e0;",
        "setDeviceIdProvider$android_sdk_base_release",
        "(Lcom/braze/managers/e0;)V",
        "getDeviceIdProvider$android_sdk_base_release$annotations",
        "Lcom/braze/events/e;",
        "externalIEventMessenger",
        "Lcom/braze/events/e;",
        "getExternalIEventMessenger$android_sdk_base_release",
        "()Lcom/braze/events/e;",
        "setExternalIEventMessenger$android_sdk_base_release",
        "(Lcom/braze/events/e;)V",
        "getExternalIEventMessenger$android_sdk_base_release$annotations",
        "Lcom/braze/managers/g0;",
        "registrationDataProvider",
        "Lcom/braze/managers/g0;",
        "getRegistrationDataProvider$android_sdk_base_release",
        "()Lcom/braze/managers/g0;",
        "setRegistrationDataProvider$android_sdk_base_release",
        "(Lcom/braze/managers/g0;)V",
        "getRegistrationDataProvider$android_sdk_base_release$annotations",
        "configurationProvider",
        "Lcom/braze/configuration/BrazeConfigurationProvider;",
        "getConfigurationProvider$android_sdk_base_release",
        "()Lcom/braze/configuration/BrazeConfigurationProvider;",
        "setConfigurationProvider$android_sdk_base_release",
        "(Lcom/braze/configuration/BrazeConfigurationProvider;)V",
        "getConfigurationProvider$android_sdk_base_release$annotations",
        "Lcom/braze/managers/i0;",
        "pushDeliveryManager",
        "Lcom/braze/managers/i0;",
        "getPushDeliveryManager$android_sdk_base_release",
        "()Lcom/braze/managers/i0;",
        "setPushDeliveryManager$android_sdk_base_release",
        "(Lcom/braze/managers/i0;)V",
        "getPushDeliveryManager$android_sdk_base_release$annotations",
        "Lcom/braze/managers/h0;",
        "udm",
        "Lcom/braze/managers/h0;",
        "getUdm$android_sdk_base_release",
        "()Lcom/braze/managers/h0;",
        "setUdm$android_sdk_base_release",
        "(Lcom/braze/managers/h0;)V",
        "getUdm$android_sdk_base_release$annotations",
        "getCachedContentCardsUpdatedEvent",
        "()Lcom/braze/events/ContentCardsUpdatedEvent;",
        "cachedContentCardsUpdatedEvent",
        "getDeviceId",
        "()Ljava/lang/String;",
        "deviceId",
        "()Lcom/braze/BrazeUser;",
        "currentUser",
        "value",
        "getRegisteredPushToken",
        "setRegisteredPushToken",
        "registeredPushToken",
        "Companion",
        "android-sdk-base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/braze/Braze$Companion;

.field private static final KNOWN_APP_CRAWLER_DEVICE_MODELS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NECESSARY_BRAZE_SDK_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static areOutboundNetworkRequestsOffline:Z

.field private static final brazeClassLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final clearConfigSentinel:Lcom/braze/configuration/BrazeConfig;

.field private static customBrazeNotificationFactory:Lcom/braze/IBrazeNotificationFactory;

.field private static deviceDataProvider:Lcom/braze/managers/d0;

.field private static endpointProvider:Lcom/braze/IBrazeEndpointProvider;

.field private static final endpointProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static volatile instance:Lcom/braze/Braze;

.field private static final pendingConfigurations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/braze/configuration/BrazeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static sdkEnablementProvider:Lcom/braze/storage/a0;

.field private static shouldMockNetworkRequestsAndDropEvents:Z

.field private static shouldRequestFrameworkListenToNetworkUpdates:Z

.field private static staticExternalIEventMessenger:Lcom/braze/events/e;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private brazeUser:Lcom/braze/BrazeUser;

.field public configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

.field public deviceIdProvider:Lcom/braze/managers/e0;

.field private externalIEventMessenger:Lcom/braze/events/e;

.field public imageLoader:Lcom/braze/images/IBrazeImageLoader;

.field private isApiKeyPresent:Ljava/lang/Boolean;

.field private isInstanceStopped:Z

.field private offlineUserStorageProvider:Lcom/braze/configuration/e;

.field public pushDeliveryManager:Lcom/braze/managers/i0;

.field public registrationDataProvider:Lcom/braze/managers/g0;

.field public udm:Lcom/braze/managers/h0;


# direct methods
.method public static synthetic $r8$lambda$-bSL574dx8kaugpdDR_tpKUDCeo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->refreshFeatureFlags$lambda$86$lambda$85()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$-fEYjF7nXkHZ-xIR-4R4IK-B1cM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToBannersUpdates$lambda$115()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$-mv7qtWSkNLHxcNh4oX1TnZ_6Og(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logCustomEvent$lambda$50$lambda$48(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$-uPY0pBGzA8klQcGmrIy_hwEeHU(Ljava/lang/String;Lcom/braze/Braze;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->setGoogleAdvertisingId$lambda$166(Ljava/lang/String;Lcom/braze/Braze;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$0FOGy6x03uYbB9w571D04DB6CsI(Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logPushNotificationOpened$lambda$57(Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$11JDKdpm0CgGjdO_aTL8D1roBSY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPushNotificationOpened$lambda$57$lambda$56()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$16Br377KhvIZdiS-56_bzUdNaA8(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->requestGeofenceRefresh$lambda$175(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1HTQ6G9jC3i4ON2_rAARzp2b6pw()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToBannersUpdates$lambda$118()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$1rgDrIEf2_RHeN1bkprDIcohsEg(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->requestSingleLocationUpdate$lambda$187(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$22ogb7aVSPJM4VGvYWsK_orni1A()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->publishError$lambda$212()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$24oneEKucz2vbuKsobA563_NZeU(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->changeUser$lambda$138$lambda$133(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2dzwLef6zZRHq_3ap4JGdBjFT_c(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logCustomEvent$lambda$50$lambda$49(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2iojizKA8TAnIliVhWf6EhEE4S4()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logFeatureFlagImpression$lambda$89()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$32hCAkkrblurrekZuIt5MZs9uVE()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestFeedRefresh$lambda$77()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$38eBkgSVcAGW4IEpR2e1APp95Oo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestContentCardsRefresh$lambda$81$lambda$80()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$3KpUgbWfsBL4KcL-ecnDU_u5BAU(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->handleInternalBannerRefresh$lambda$191(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3kEilBpKokK4dLufAdAlX9X4LE8(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->retryInAppMessage$lambda$197(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3lvDutoe3ZWE5B_1xvzZq48WHuA(Lcom/braze/Braze;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->requestGeofenceRefresh$lambda$177(Lcom/braze/Braze;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$478z9T3t02RHp46aPyCGAm20LtI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logPushStoryPageClicked$lambda$68(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4AfY-DaiZ9h21XhbgFrZuhEL5Bw(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->publishError$lambda$213(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4FmiADiWGiBbO-kgXV0pZ7uGVYE(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->removeSingleSubscription$lambda$129(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5qPVST9-1QfBe8tPjA8Qc122e4U(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->_set_registeredPushToken_$lambda$36$lambda$33(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5weV-aLnJr-Zw3JZ5gurH6kjpdo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->_init_$lambda$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$6Ive3UcMiUvseqQHqNR7fJSiXsM(Landroid/app/Activity;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->closeSession$lambda$43(Landroid/app/Activity;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6SRID7V268Qo_xbClJLuIC57Ts0(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->subscribeToFeatureFlagsUpdates$lambda$113(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6W80I21cCfQti1MXU_25AkcgpsM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->_get_currentUser_$lambda$30()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$6dTszo5a9cgey3GYZOArKceDOzM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestContentCardsRefresh$lambda$79()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$7JgFDRgX1R6BODbIlPyTm0OEIoQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->changeUser$lambda$138$lambda$134(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$7_BjHV0tfCfNZqmLc7SgHUBbjc4(Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->isEphemeralEventKey$lambda$218(Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$80SPBA0m-L5B5nfjmB7KFT3I3y8()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->isEphemeralEventKey$lambda$217()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$8P7kWPWRqWTvhJ-7r9i_paEWUAE(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->performPushDeliveryFlush$lambda$205(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8VPSircHHTDkNp4RkTgZv-Zh60Q()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestBannersRefresh$lambda$91()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$8aVlTn5tWURGyOYzw4OF-xMCQvg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->waitForUserDependencyThread$lambda$219()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$8eN3CZi077DgCLW2WWMzhXV31Lo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->addSerializedCardJsonToStorage$lambda$180$lambda$179(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8lEysXU4r0NSd83ahjhSzC5oP1s()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestLocationInitialization$lambda$162()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$96jZE5uvlbKq6Mg9SH-YEI-llfI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->changeUser$lambda$138$lambda$131()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$9QV9Xl3_fdssbKCw6BiD9BEO2gA(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->requestGeofencesInitialization$lambda$185(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9bLR1Exv-1C7WvobfyD8X0vh_9o(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->changeUser$lambda$138$lambda$135(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9masOHmDtkrGb-xANts9BLvpzF0(Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logFeedCardClick$lambda$156(Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ASEAQtEjqcaL17Qir0P9mNBupHI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->getCurrentUser$lambda$139()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$AhFHAuby2Klul3PbcUSg8__aqrI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestGeofenceRefresh$lambda$175$lambda$174()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Ah_K8kjcCkFM6MY61rwF3jHB7vU(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;Lcom/braze/events/BannersUpdatedEvent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/braze/Braze;->requestBannersRefresh$lambda$100$lambda$98$lambda$94(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;Lcom/braze/events/BannersUpdatedEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AvByvGwd5MJfYc9g9gkWUIrygXQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->getContentCardCount$lambda$141()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Bm9UJhHpFpgwDdfxL-n8pT8qL9I()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->applyPendingRuntimeConfiguration$lambda$195$lambda$192()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$C1OxJiZS9asYTxmb4CgDr2x7oOU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->getCachedContentCards$lambda$144()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$C2z_SkP57Va4CqbHPRRTtRnfpz4(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->requestImmediateDataFlush$lambda$107(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C8MC5QrN_0rJ4wnyVnKJn0kef6c(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->addSingleSynchronousSubscription$lambda$125(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CvJBjUYz9TZZ538u3lLabHso_EQ(Lcom/braze/events/InAppMessageEvent;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->retryInAppMessage$lambda$196(Lcom/braze/events/InAppMessageEvent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DKvDSWeUUqMyz2kdub6Avff-Ymw(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->requestContentCardsRefreshFromCache$lambda$83(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DQZwd93omwmSmZBDmHxQ6U5cZnQ(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logFeatureFlagImpression$lambda$90(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Das0SNCqhTA9Izra-qczkp6Oj34(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->setSdkAuthenticationSignature$lambda$170(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DnjMrv5llpjqkx_0jQHmC01pp3c(Landroid/content/Intent;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->handleInAppMessageTestPush$lambda$189(Landroid/content/Intent;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DrwfosC-j30MfyAqgJ9DKNxKO6k()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->getContentCardsLastUpdatedInSecondsFromEpoch$lambda$143()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$DyEyme1Ye4_YC6bC1WRaN6ejV-k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logCustomEvent$lambda$44(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EqnFXO1CYIQ292FpArmIzPZU5fM(DDLcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/braze/Braze;->requestGeofences$lambda$161(DDLcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FEfVRLYdaOdrGKh2Xt-rpptqPAU(Lcom/braze/Braze;Landroid/content/Context;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->_init_$lambda$27(Lcom/braze/Braze;Landroid/content/Context;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$FLxx4x7eCYB4ampaXNm4zTgEGQk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->setSdkAuthenticationSignature$lambda$170$lambda$169()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$GBEC7SniLSrmuixBkHmmOj0Z-pk(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->removeSingleSubscription$lambda$128$lambda$126(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GZqbfRnf8EBo-cff8WBxqzh41-c(Lcom/braze/Braze;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->schedulePushDelivery$lambda$203(Lcom/braze/Braze;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GbdQXwIg8mX1K7x9j7t3HpEN11w()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPushNotificationOpened$lambda$62$lambda$59()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$Gh5a8dj8qpEW93kYq5sGK-516-8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->addSerializedCardJsonToStorage$lambda$178(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HGWXdsvgeWLXYalg62q3sN9NzhQ(DD)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/Braze;->requestGeofences$lambda$161$lambda$160(DD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HKB6zQR8waMOVWC00YwoPJ6O4PM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->waitForUserDependencyThread$lambda$220()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$HOX4i97JdTzYvNiFkVhguHvo-cI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToSdkAuthenticationFailures$lambda$123()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$HPMv_gIa3Fx7o_FaEiwEiygeaEk(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logFeedCardClick$lambda$153(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Hgv36ZaxCcT6SXVUR5NRVF6-FZY(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->refreshFeatureFlags$lambda$86(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I4XVzheeVATTOJreATqOnbYI0WA(JJ)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/Braze;->_init_$lambda$28(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$I9i-_ckT8TFgA94fazE1nvC173k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->getFeatureFlag$lambda$88(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IFYcLz35Qm1tXUX_zWaBZNPayIo(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->recordGeofenceTransition$lambda$172(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ISJtLCco3FA5gmgQP8QX6qp6S-E(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->changeUser$lambda$138(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$J9K-O8xmJz1cBrhCugkh9fnZXIE(Lcom/braze/Braze;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->setSyncPolicyOfflineStatus$lambda$211(Lcom/braze/Braze;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JU6U706BGVE3MudM1NPVxBMR8rw()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestGeofences$lambda$158()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$KLzNe_xK4jGihr54wUfufV91CDs()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->refreshFeatureFlags$lambda$84()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$KXUE378TrEOPvRkq_yAoOw4otDA(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logLocationRecordedEventFromLocationUpdate$lambda$183(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$KlguW1S4UsYsWNf5B8393LPw_5c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logFeedCardImpression$lambda$149(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LBeAZqqA4bF-2ROxRkAvZcS9Q9I(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->setGoogleAdvertisingId$lambda$166$lambda$165(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LJPWqXffAVFmgDcfZT7d5wIf5lQ(Ljava/util/List;Lcom/braze/Braze;Lcom/braze/events/IValueCallback;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->requestBannersRefresh$lambda$100(Ljava/util/List;Lcom/braze/Braze;Lcom/braze/events/IValueCallback;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LZs9GOMUrt9y8SPCj1DysanXjeo(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->removeSingleSubscription$lambda$128$lambda$127(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LgmGaLROaaXaDQGtvH0WH3EE9x0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestBannersRefresh$lambda$100$lambda$99()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$LvAF-n51WRPK1wdr42Qsn-oGSKE()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPushMaxCampaign$lambda$206()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MElB6-T6Ld231g-Mp423iGaRR1s()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->getAllFeatureFlags$lambda$87()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MKZ3IszM4alSQfh91vdqoX163Ac()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestSingleLocationUpdate$lambda$186()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$MxDJHd6O_NrIGkJYShB2xxWMakA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToFeatureFlagsUpdates$lambda$111()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$NUyY5jcudFwIK4LXQxeWG8T2YGE()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->verifyProperSdkSetup$lambda$216()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$OzaG_EG1VwXXJZb6tpZZz196hUg(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->requestFeedRefreshFromCache$lambda$76(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PEjcNWVqn2vd1h68tLExbyvHuWY(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->requestContentCardsRefresh$lambda$81(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PSxiUdc91MdC0tBAh3TQiiswl04()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestGeofenceRefresh$lambda$173()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$PU5FlDF87Wq_bTQFa-yim6mJ9z8(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->_set_registeredPushToken_$lambda$36$lambda$35(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QRiWZLjhj10Cp594YJ2XNfExgOs()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPurchase$lambda$54$lambda$52()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$QeBmsL6hPm4xo__BMRzjV3p-Ak4(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->requestGeofenceRefresh$lambda$176(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RdS4LE8DtmVrSPXh7F0D8oJBtDw(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->setSyncPolicyOfflineStatus$lambda$209(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RlNNexjIE9-uJywRXDOCQLTpedg(Landroid/app/Activity;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->openSession$lambda$40(Landroid/app/Activity;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S3sHBs691UMAFefzAPVNruVUWfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->changeUser$lambda$138$lambda$137(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S40jNQR0gycx4Ukiv2DpE3Ly7PA(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logPurchase$lambda$51(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SLUCkD_ZAE-XwIqA5SOt658ruCc(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logPushMaxCampaign$lambda$207(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SOsg2wmetr-gIWirfm31yB_ZpIs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->changeUser$lambda$138$lambda$136(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SZuK43cfw-OhXAW4b1OPFamFw4c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToFeatureFlagsUpdates$lambda$113$lambda$112()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$SdPkSgYt4ZVvN9sAexB09LsfeSU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->_get_registeredPushToken_$lambda$31()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$T5dZtAN9d__J9Z5YHeJ2J2Jb0vM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToContentCardsUpdates$lambda$110()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$T6Yh_CKeBa2vJ3AMZjviYJiKK9k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->setSdkAuthenticationSignature$lambda$167(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TCMqn2J5fvb2QeHlF_bjqe33qhs()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPushNotificationActionClicked$lambda$67$lambda$65()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$TEc0qYkwNjS0_0qZbZVp5NmyH34()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPurchase$lambda$54$lambda$53()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$TeFUAPPblo9B09dQXntHs6jYySY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logFeedCardImpression$lambda$152$lambda$150()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$U2NpcYB8_-nvAVwWpl5kok6nG_Y(Landroid/content/Intent;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logPushNotificationOpened$lambda$62(Landroid/content/Intent;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UH9hUKjIyImbBpgEfCxTPdrrTyM(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->_set_registeredPushToken_$lambda$32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$UVn-i5u9eErnRI9-kyjaXwLCZ0I()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->_get_deviceId_$lambda$29()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$UrDZHD1QkTXoEiOe0skuI4XHVKs(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->reenqueueInAppMessage$lambda$199(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VBmLWm0JxVdBq58DPZqoL-Utu3w(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logBannerClick$lambda$103(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VKQtzDbHAoponxeev4dfuaSCuZI(Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logFeedCardImpression$lambda$152(Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VxJlUXh6nXakiUaYF_tpkqViXz4(Lcom/braze/events/InAppMessageEvent;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->reenqueueInAppMessage$lambda$198(Lcom/braze/events/InAppMessageEvent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$W3Sebcgb374Wid93_neJFDEpXP0(DD)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/Braze;->requestGeofences$lambda$161$lambda$159(DD)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WCCSYvSbPJQg11t-NUTKwExGaTA(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->setGoogleAdvertisingId$lambda$163(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$WjNC2NAY3ZzksUV7A_m_ihhzaSM()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestImmediateDataFlush$lambda$107$lambda$106()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$XShUA7djTCPoHj0GMueFwlrVstU(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logFeedDisplayed$lambda$74(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XWbfGLXgdyAcn0OEBqK2Tb-Ju0A(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logPushNotificationOpened$lambda$55(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Xz7OxwIfsri6VKsTty1OCiX5Y0o(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logCustomEvent$lambda$50$lambda$46(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y3vCouzabbNtfJuoAVuhYc204CY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->closeSession$lambda$43$lambda$42()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$YXP76zaMmX64BUbU0J-khOVwjr8()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestFeedRefreshFromCache$lambda$75()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$YjOQZHmnv1P7i3mXxrHnb3QrQwg(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->deserializeContentCard$lambda$147(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YnpXSOCQaov6YbrvCVhvLEbL1IU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPushStoryPageClicked$lambda$71$lambda$69()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZEeEZh__Xk7q3xSaxNXpqmgXGw8()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->verifyProperSdkSetup$lambda$215()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ZfK9pVC30lt8GNsHuaBk1_hoWRc(Ljava/lang/String;Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->logPushStoryPageClicked$lambda$71(Ljava/lang/String;Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Zi3v5CRf5Uxz7MXZnO3QGbv5Fe0(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->addSerializedCardJsonToStorage$lambda$180(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_HyGcqN88lDvzC-KtZHnl9A_n-c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->performPushDeliveryFlush$lambda$204()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$a0u_-PJTi1wU1CURiyqeaq5n9Dc(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->verifyProperSdkSetup$lambda$214(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a1NvR2-QxBxpChioaNUzdJu6bvk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->_get_cachedContentCardsUpdatedEvent_$lambda$37()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aGr8sgnLUgWKe3HwH2qKXWIetEg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestImmediateDataFlush$lambda$105()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$aN01zdGX99GmFnLj_UamEPdu8kI(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->getBanner$lambda$101(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aTEEtsh2hJ9p8ZEFpdTnzMG1RtY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->openSession$lambda$40$lambda$39()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ayx2HXlvggUaSEQePSL6ZDentBU(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/Braze;Lcom/braze/models/outgoing/BrazeProperties;)Lkotlin/Unit;
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/braze/Braze;->logPurchase$lambda$54(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/Braze;Lcom/braze/models/outgoing/BrazeProperties;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bbsrv2K_TDhEi3E2GC082-hKKNE()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToBannersErrors$lambda$119()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$cf-fibKKRtQlHClmzQ2PiJwg2SY(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;Lcom/braze/events/internal/b;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/braze/Braze;->requestBannersRefresh$lambda$100$lambda$98$lambda$95(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;Lcom/braze/events/internal/b;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eWjwGhwzL1srMAZLpCHlx_xuVKU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPushNotificationActionClicked$lambda$67$lambda$64()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ebWYXENvvfsGIorf6Ierk_g43fA(Lcom/braze/configuration/BrazeConfig;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->applyPendingRuntimeConfiguration$lambda$195$lambda$194(Lcom/braze/configuration/BrazeConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eer1i7eqAdVO51vS5AKE_pcAOPk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logFeedCardClick$lambda$156$lambda$154()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$f-XTYvAPju6-3Q8IMgTYtLTq-gc(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/Braze;->logPushNotificationActionClicked$lambda$67(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fW202KY7ugO3tVNHhotwEb_CEYU(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->_set_registeredPushToken_$lambda$36(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g8szA7AH0uoIuztyyJTTqK8nTDc()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToBannersUpdates$lambda$117$lambda$116()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$gRLKBbdG9nDtN96GG8slAys1vyk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->setGoogleAdvertisingId$lambda$166$lambda$164()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$gTgSO5GaCAS4wYGqGGl0bCyqEBU()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->handleInAppMessageTestPush$lambda$188()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$gudbffNNhjT4Nd32c7MO2pIWAaI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->openSession$lambda$38()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$h210nvGtiATonyfXATuyhR46_P8(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->deserializeContentCard$lambda$148(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hKSzSJf6k6_HB9pcITOZkfjvR-k()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logFeedDisplayed$lambda$72()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$hlssVyB0s6YiGyNWapdBFxg_g-E(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->setSdkAuthenticationSignature$lambda$170$lambda$168(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hmJy76f2XzlokVmH_8Zv-E-eGK0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->schedulePushDelivery$lambda$202()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$imNccye626UG_PCb-eVikkQ381g()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToNoMatchingTriggerForEvent$lambda$109()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$j3Y-yAn9cN8mQwe2c806KuMPTPQ()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToNewInAppMessages$lambda$108()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$jFOcnFxrB963rfn3kc3-eDnN_9k()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->getContentCardUnviewedCount$lambda$142()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$jTiobgj2jIL4bWiCQ6xo6JW6EnY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestContentCardsRefreshFromCache$lambda$82()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$jW2rxO6x0ZcVWMELn80kLcyyW4M()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->applyPendingRuntimeConfiguration$lambda$195$lambda$193()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$kX7Ykh36sttW87OO9SoxubauQD8(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->subscribeToBannersUpdates$lambda$117(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$koanbKDcapzMjT_SQN8WLAdHhDU(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/braze/Braze;->logCustomEvent$lambda$50$lambda$45(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lD-LRh3jVoWLX70DqsnV66dNK3Y()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->recordGeofenceTransition$lambda$171()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$larJCDaRGWxsgm_uMuN9BGg7qZg()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->areCachedContentCardsStale$lambda$145()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$mDdKCM6ZM_l3uX1wtAtffXdH1f0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPushNotificationActionClicked$lambda$63()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$mSEs8NbI61CQZ7Ipgsx7uJIuPiQ(Z)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->setSyncPolicyOfflineStatus$lambda$211$lambda$210(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nUJ2t7TEKJqs3gCI_fB1LZhPwmo(Lcom/braze/Braze;Ljava/lang/String;J)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/Braze;->logPushDelivery$lambda$201(Lcom/braze/Braze;Ljava/lang/String;J)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nn8XzC-eV5bQyrVCK1Uuxl9phew(Lcom/braze/Braze;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/braze/Braze;->logBannerClick$lambda$104(Lcom/braze/Braze;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ntgNjPCvWw8D4-qYB9LOHPo8hjI()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->getConfigurationProviderSafe$lambda$221()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$oEClbCNRNMYXF7NaCcOXAD-HKdA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->_set_registeredPushToken_$lambda$36$lambda$34()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$oj-1NpUFKWDymWFvs33_rve8Fjo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->deserializeContentCard$lambda$146()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$qTOmQCZLX158Wri87BaWdmGULCk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->requestGeofencesInitialization$lambda$184()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$q_axGd9ZpsK64YBKquJz0uYQB0Y(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->changeUser$lambda$138$lambda$132(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qqaomfXlbs9PuCeM6cXgcJk866w(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->requestFeedRefresh$lambda$78(Lcom/braze/Braze;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$r6fMrU4FoiFRAE1MXaJoGbAs4Ws(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logPushNotificationOpened$lambda$58(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rIhv0zuHHDSR8UZ-sbyTgVh2XZ0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logBannerImpression$lambda$102(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rQ21dS4cOZID5I_NPHjx9w1ffts()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logLocationRecordedEventFromLocationUpdate$lambda$181()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$rbxc2Ob6TPsmykxLclW83oItNnk()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->_init_$lambda$3()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$s_Jd5swt4cVI4LlyiK4WKe1f-_0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToNetworkFailures$lambda$122()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$scDPu-_IkPyvqwXkVivh7rYn4Vs()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->validateAndStorePushId$lambda$208()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$ss5pRhY6ON3_vwpYR6od-NQRw08(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->changeUser$lambda$130(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sujUU0c7Wnq3_nuHCcl_NDP-zjY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToPushNotificationEvents$lambda$124()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$tmlIf8UCCFVvN5D3k7VsyBkFwIs(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->deserializeInAppMessageString$lambda$157(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tnGYmjvjGqpywPCkBlw1shM-3yo()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToFeatureFlagsUpdates$lambda$114()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$tz5LlBwHF4xWCia5ovNRvSV8QnY()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToFeedUpdates$lambda$120()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$u4FpjqAx6-V7UhPuzjTSIvxugSE()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPushNotificationActionClicked$lambda$67$lambda$66()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$uCFrVePxzGl9VLi_DRnZpVprl1Y()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->handleInternalBannerRefresh$lambda$190()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$uXKUitvp6r3VX1Ma9GjUdiM6yS8(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logCustomEvent$lambda$50$lambda$47(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w3nvto5J2MboH5FUhflSLxnBeB4(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logPushNotificationOpened$lambda$62$lambda$60(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w6sUQxZisdFypHTj5ugbue7zWoE()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->closeSession$lambda$41()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$wXnyj7ncqj41BptXylps_I2NweQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/braze/Braze;->logPushDelivery$lambda$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yDsC_8HVE40nHASlxDXcnoqsww4(Lcom/braze/Braze;Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;Lcom/braze/models/outgoing/BrazeProperties;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/braze/Braze;->logCustomEvent$lambda$50(Lcom/braze/Braze;Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;Lcom/braze/models/outgoing/BrazeProperties;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yYDTF1iMjBNTtZgp2iv0TlDXP1s()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->logPushNotificationOpened$lambda$62$lambda$61()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$yYLVWQJNd4RV10ssWrdakIpxdGA()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->subscribeToSessionUpdates$lambda$121()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$zF5a441lZZ-uWp1ivjv7qecvP68()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/braze/Braze;->getDeviceIdAsync$lambda$140()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/braze/Braze$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/braze/Braze$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/braze/Braze;->brazeClassLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 6
    const-string v0, "calypso appcrawler"

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/braze/Braze;->KNOWN_APP_CRAWLER_DEVICE_MODELS:Ljava/util/Set;

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const-string v1, "android.permission.INTERNET"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 10
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/braze/Braze;->NECESSARY_BRAZE_SDK_PERMISSIONS:Ljava/util/Set;

    .line 20
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/braze/Braze;->endpointProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 26
    sput-boolean v2, Lcom/braze/Braze;->shouldRequestFrameworkListenToNetworkUpdates:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/braze/Braze;->pendingConfigurations:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/braze/configuration/BrazeConfig$Builder;

    invoke-direct {v0}, Lcom/braze/configuration/BrazeConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfig$Builder;->build()Lcom/braze/configuration/BrazeConfig;

    move-result-object v0

    sput-object v0, Lcom/braze/Braze;->clearConfigSentinel:Lcom/braze/configuration/BrazeConfig;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 36
    sget-object v10, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v7, Lcom/braze/Braze$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/braze/Braze$$ExternalSyntheticLambda0;-><init>()V

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    .line 38
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 39
    sget-object v3, Lcom/braze/Braze;->KNOWN_APP_CRAWLER_DEVICE_MODELS:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "toLowerCase(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/Braze$$ExternalSyntheticLambda111;

    invoke-direct {v7, v2}, Lcom/braze/Braze$$ExternalSyntheticLambda111;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 44
    sget-object v2, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v2}, Lcom/braze/Braze$Companion;->enableMockNetworkRequestsAndDropEventsMode()Z

    .line 47
    :cond_0
    new-instance v2, Lcom/braze/images/DefaultBrazeImageLoader;

    iget-object v3, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/braze/images/DefaultBrazeImageLoader;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Lcom/braze/Braze;->setImageLoader(Lcom/braze/images/IBrazeImageLoader;)V

    .line 48
    sget-object v2, Lcom/braze/Braze;->staticExternalIEventMessenger:Lcom/braze/events/e;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    new-instance v2, Lcom/braze/events/d;

    new-instance v4, Lcom/braze/storage/a0;

    iget-object v5, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/braze/storage/a0;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {v2, v4, v3}, Lcom/braze/events/d;-><init>(Lcom/braze/storage/a0;Z)V

    .line 50
    :cond_1
    iput-object v2, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 52
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda130;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda130;-><init>()V

    .line 53
    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda141;

    invoke-direct {v4, p0, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda141;-><init>(Lcom/braze/Braze;Landroid/content/Context;)V

    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/braze/Braze;->run$android_sdk_base_release(Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;)V

    .line 148
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 149
    new-instance v7, Lcom/braze/Braze$$ExternalSyntheticLambda152;

    invoke-direct {v7, v2, v3, v0, v1}, Lcom/braze/Braze$$ExternalSyntheticLambda152;-><init>(JJ)V

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v10

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final _get_cachedContentCardsUpdatedEvent_$lambda$37()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to retrieve the cached ContentCardsUpdatedEvent."

    return-object v0
.end method

.method private static final _get_currentUser_$lambda$30()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to retrieve the current user."

    return-object v0
.end method

.method private static final _get_deviceId_$lambda$29()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to retrieve the device id."

    return-object v0
.end method

.method private static final _get_registeredPushToken_$lambda$31()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to get the registered push registration token."

    return-object v0
.end method

.method private static final _init_$lambda$0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Braze SDK Initializing"

    return-object v0
.end method

.method private static final _init_$lambda$27(Lcom/braze/Braze;Landroid/content/Context;)Lkotlin/Unit;
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->applyPendingRuntimeConfiguration$android_sdk_base_release()V

    .line 2
    new-instance v1, Lcom/braze/configuration/BrazeConfigurationProvider;

    iget-object v2, v9, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v1}, Lcom/braze/Braze;->setConfigurationProvider$android_sdk_base_release(Lcom/braze/configuration/BrazeConfigurationProvider;)V

    .line 3
    sget-object v10, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/braze/Braze$Companion;->getConfiguredApiKey(Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    xor-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v9, Lcom/braze/Braze;->isApiKeyPresent:Ljava/lang/Boolean;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getLoggerInitialLogLevel()I

    move-result v1

    invoke-static {v1}, Lcom/braze/support/BrazeLogger;->setInitialLogLevelFromConfiguration(I)V

    const/4 v11, 0x0

    .line 5
    invoke-static {v2, v3, v11}, Lcom/braze/support/BrazeLogger;->checkForSystemLogLevelProperty$default(ZILjava/lang/Object;)V

    .line 8
    invoke-static {v10, v0}, Lcom/braze/Braze$Companion;->access$getSdkEnablementProvider(Lcom/braze/Braze$Companion;Landroid/content/Context;)Lcom/braze/storage/a0;

    move-result-object v1

    .line 9
    iget-object v1, v1, Lcom/braze/storage/a0;->a:Lcom/braze/storage/e;

    .line 10
    const-string v4, "appboy_sdk_disabled"

    invoke-virtual {v1, v4, v2}, Lcom/braze/storage/e;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {v10, v3}, Lcom/braze/Braze$Companion;->setOutboundNetworkRequestsOffline(Z)V

    .line 13
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getBrazeApiKey()Lcom/braze/models/outgoing/b;

    move-result-object v1

    .line 14
    iget-object v1, v1, Lcom/braze/models/outgoing/b;->a:Ljava/lang/String;

    .line 15
    new-instance v2, Lcom/braze/managers/i0;

    iget-object v3, v9, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/braze/managers/i0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/braze/Braze;->setPushDeliveryManager$android_sdk_base_release(Lcom/braze/managers/i0;)V

    .line 16
    new-instance v2, Lcom/braze/managers/u;

    iget-object v3, v9, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/braze/managers/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/braze/Braze;->setDeviceIdProvider$android_sdk_base_release(Lcom/braze/managers/e0;)V

    .line 17
    new-instance v1, Lcom/braze/configuration/e;

    iget-object v2, v9, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/braze/configuration/e;-><init>(Landroid/content/Context;)V

    iput-object v1, v9, Lcom/braze/Braze;->offlineUserStorageProvider:Lcom/braze/configuration/e;

    .line 18
    new-instance v1, Lcom/braze/managers/l0;

    iget-object v2, v9, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/braze/managers/l0;-><init>(Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    invoke-virtual {v9, v1}, Lcom/braze/Braze;->setRegistrationDataProvider$android_sdk_base_release(Lcom/braze/managers/g0;)V

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getCustomEndpoint()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    .line 20
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getCustomEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/braze/support/ValidationUtils;->isInvalidCustomEndpoint$android_sdk_base_release(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 21
    sget-object v12, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v13, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda17;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda17;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    move-object v3, v13

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 22
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda29;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda29;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 23
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda32;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda32;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 24
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda34;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda34;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 25
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda35;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda35;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 26
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda36;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda36;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 28
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda37;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda37;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 29
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda38;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda38;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 30
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda39;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda39;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 31
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda40;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda40;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 32
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda18;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda18;-><init>()V

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 34
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->getCustomEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/braze/Braze$Companion;->setConfiguredCustomEndpoint$android_sdk_base_release(Ljava/lang/String;)V

    .line 37
    :cond_5
    :goto_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/braze/configuration/BrazeConfigurationProvider;->isFirebaseCloudMessagingRegistrationEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 38
    new-instance v10, Lcom/braze/managers/b0;

    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getRegistrationDataProvider$android_sdk_base_release()Lcom/braze/managers/g0;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lcom/braze/managers/b0;-><init>(Landroid/content/Context;Lcom/braze/managers/g0;)V

    .line 39
    invoke-virtual {v10}, Lcom/braze/managers/b0;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 40
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda19;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda19;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getFirebaseCloudMessagingSenderIdKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 42
    invoke-virtual {v10, v0}, Lcom/braze/managers/b0;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 45
    :cond_6
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda20;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda20;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_3

    .line 51
    :cond_7
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda21;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda21;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 56
    :cond_8
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->isAdmMessagingRegistrationEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 57
    sget-object v0, Lcom/braze/managers/b;->c:Lcom/braze/managers/a;

    iget-object v1, v9, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    .line 58
    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lcom/braze/managers/a;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v1}, Lcom/braze/managers/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 106
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda23;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda23;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 107
    new-instance v0, Lcom/braze/managers/b;

    iget-object v1, v9, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getRegistrationDataProvider$android_sdk_base_release()Lcom/braze/managers/g0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/braze/managers/b;-><init>(Landroid/content/Context;Lcom/braze/managers/g0;)V

    invoke-virtual {v0}, Lcom/braze/managers/b;->a()V

    goto :goto_4

    .line 109
    :cond_9
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda24;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda24;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    goto :goto_4

    .line 112
    :cond_a
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda25;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda25;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 114
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/braze/Braze;->verifyProperSdkSetup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 116
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda26;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda26;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 118
    :goto_5
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda27;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda27;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v10

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 121
    :try_start_1
    new-instance v1, Lcom/braze/managers/u0;

    .line 122
    iget-object v13, v9, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    .line 123
    iget-object v2, v9, Lcom/braze/Braze;->offlineUserStorageProvider:Lcom/braze/configuration/e;

    if-nez v2, :cond_b

    const-string v2, "offlineUserStorageProvider"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v14, v11

    goto :goto_6

    :cond_b
    move-object v14, v2

    .line 124
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v15

    .line 125
    iget-object v2, v9, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 126
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getDeviceIdProvider$android_sdk_base_release()Lcom/braze/managers/e0;

    move-result-object v17

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getRegistrationDataProvider$android_sdk_base_release()Lcom/braze/managers/g0;

    move-result-object v18

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/braze/Braze;->getPushDeliveryManager$android_sdk_base_release()Lcom/braze/managers/i0;

    move-result-object v19

    .line 129
    sget-boolean v20, Lcom/braze/Braze;->shouldMockNetworkRequestsAndDropEvents:Z

    .line 130
    sget-boolean v21, Lcom/braze/Braze;->areOutboundNetworkRequestsOffline:Z

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/braze/Braze;->getDeviceDataProvider()Lcom/braze/managers/d0;

    move-result-object v22

    .line 132
    sget-boolean v23, Lcom/braze/Braze;->shouldRequestFrameworkListenToNetworkUpdates:Z

    move-object v12, v1

    move-object/from16 v16, v2

    .line 133
    invoke-direct/range {v12 .. v23}, Lcom/braze/managers/u0;-><init>(Landroid/content/Context;Lcom/braze/configuration/e;Lcom/braze/configuration/BrazeConfigurationProvider;Lcom/braze/events/e;Lcom/braze/managers/e0;Lcom/braze/managers/g0;Lcom/braze/managers/i0;ZZLcom/braze/managers/d0;Z)V

    .line 134
    invoke-direct {v9, v1}, Lcom/braze/Braze;->setUserSpecificMemberVariablesAndStartDispatch(Lcom/braze/managers/u0;)V

    .line 149
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda28;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda28;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v10

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 151
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda30;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda30;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 152
    invoke-direct {v9, v0}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    .line 154
    :goto_7
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda31;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda31;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 155
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final _init_$lambda$28(JJ)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Braze SDK loaded in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long/2addr p0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p0, p1, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " ms / "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " nanos"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final _init_$lambda$3()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to perform initial Braze singleton setup."

    return-object v0
.end method

.method private static final _set_registeredPushToken_$lambda$32(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to set the push token "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final _set_registeredPushToken_$lambda$36(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 10

    .line 1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda177;

    invoke-direct {v5, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda177;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 2
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/braze/Braze;->getRegistrationDataProvider$android_sdk_base_release()Lcom/braze/managers/g0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/l0;

    invoke-virtual {v0}, Lcom/braze/managers/l0;->b()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda178;

    invoke-direct {v5, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda178;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/braze/Braze;->getRegistrationDataProvider$android_sdk_base_release()Lcom/braze/managers/g0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/l0;

    invoke-virtual {v0, p1}, Lcom/braze/managers/l0;->a(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 23
    iget-object p1, p1, Lcom/braze/managers/u0;->k:Lcom/braze/storage/r;

    if-eqz p1, :cond_2

    goto :goto_0

    .line 24
    :cond_2
    const-string p1, "deviceCache"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 25
    :goto_0
    invoke-virtual {p1}, Lcom/braze/storage/r;->e()V

    .line 26
    invoke-virtual {p0}, Lcom/braze/Braze;->requestImmediateDataFlush()V

    .line 27
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 28
    :cond_3
    :goto_1
    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda179;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda179;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 32
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final _set_registeredPushToken_$lambda$36$lambda$33(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Push token registered: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final _set_registeredPushToken_$lambda$36$lambda$34()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Push token must not be null or blank. Not registering for push with Braze."

    return-object v0
.end method

.method private static final _set_registeredPushToken_$lambda$36$lambda$35(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Push token "

    const-string v1, " is the same as the previous token. Not calling sendFullDeviceObjectOnNextExport or requesting data flush"

    invoke-static {v0, p0, v1}, Lcom/braze/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAreOutboundNetworkRequestsOffline$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/braze/Braze;->areOutboundNetworkRequestsOffline:Z

    return v0
.end method

.method public static final synthetic access$getBrazeClassLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->brazeClassLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getBrazeUser$p(Lcom/braze/Braze;)Lcom/braze/BrazeUser;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/braze/Braze;->brazeUser:Lcom/braze/BrazeUser;

    return-object p0
.end method

.method public static final synthetic access$getClearConfigSentinel$cp()Lcom/braze/configuration/BrazeConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->clearConfigSentinel:Lcom/braze/configuration/BrazeConfig;

    return-object v0
.end method

.method public static final synthetic access$getCustomBrazeNotificationFactory$cp()Lcom/braze/IBrazeNotificationFactory;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->customBrazeNotificationFactory:Lcom/braze/IBrazeNotificationFactory;

    return-object v0
.end method

.method public static final synthetic access$getDeviceDataProvider$cp()Lcom/braze/managers/d0;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->deviceDataProvider:Lcom/braze/managers/d0;

    return-object v0
.end method

.method public static final synthetic access$getEndpointProvider$cp()Lcom/braze/IBrazeEndpointProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->endpointProvider:Lcom/braze/IBrazeEndpointProvider;

    return-object v0
.end method

.method public static final synthetic access$getEndpointProviderLock$cp()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->endpointProviderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method public static final synthetic access$getInstance$cp()Lcom/braze/Braze;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->instance:Lcom/braze/Braze;

    return-object v0
.end method

.method public static final synthetic access$getPendingConfigurations$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->pendingConfigurations:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSdkEnablementProvider$cp()Lcom/braze/storage/a0;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->sdkEnablementProvider:Lcom/braze/storage/a0;

    return-object v0
.end method

.method public static final synthetic access$getShouldMockNetworkRequestsAndDropEvents$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/braze/Braze;->shouldMockNetworkRequestsAndDropEvents:Z

    return v0
.end method

.method public static final synthetic access$getShouldRequestFrameworkListenToNetworkUpdates$cp()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/braze/Braze;->shouldRequestFrameworkListenToNetworkUpdates:Z

    return v0
.end method

.method public static final synthetic access$getStaticExternalIEventMessenger$cp()Lcom/braze/events/e;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->staticExternalIEventMessenger:Lcom/braze/events/e;

    return-object v0
.end method

.method public static final synthetic access$isInstanceStopped$p(Lcom/braze/Braze;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/braze/Braze;->isInstanceStopped:Z

    return p0
.end method

.method public static final synthetic access$setAreOutboundNetworkRequestsOffline$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/braze/Braze;->areOutboundNetworkRequestsOffline:Z

    return-void
.end method

.method public static final synthetic access$setCustomBrazeNotificationFactory$cp(Lcom/braze/IBrazeNotificationFactory;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->customBrazeNotificationFactory:Lcom/braze/IBrazeNotificationFactory;

    return-void
.end method

.method public static final synthetic access$setDeviceDataProvider$cp(Lcom/braze/managers/d0;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->deviceDataProvider:Lcom/braze/managers/d0;

    return-void
.end method

.method public static final synthetic access$setEndpointProvider$cp(Lcom/braze/IBrazeEndpointProvider;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->endpointProvider:Lcom/braze/IBrazeEndpointProvider;

    return-void
.end method

.method public static final synthetic access$setInstance$cp(Lcom/braze/Braze;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->instance:Lcom/braze/Braze;

    return-void
.end method

.method public static final synthetic access$setInstanceStopped$p(Lcom/braze/Braze;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/braze/Braze;->isInstanceStopped:Z

    return-void
.end method

.method public static final synthetic access$setSdkEnablementProvider$cp(Lcom/braze/storage/a0;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->sdkEnablementProvider:Lcom/braze/storage/a0;

    return-void
.end method

.method public static final synthetic access$setShouldMockNetworkRequestsAndDropEvents$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/braze/Braze;->shouldMockNetworkRequestsAndDropEvents:Z

    return-void
.end method

.method public static final synthetic access$setShouldRequestFrameworkListenToNetworkUpdates$cp(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/braze/Braze;->shouldRequestFrameworkListenToNetworkUpdates:Z

    return-void
.end method

.method public static final synthetic access$setStaticExternalIEventMessenger$cp(Lcom/braze/events/e;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/braze/Braze;->staticExternalIEventMessenger:Lcom/braze/events/e;

    return-void
.end method

.method public static final synthetic access$setSyncPolicyOfflineStatus(Lcom/braze/Braze;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/braze/Braze;->setSyncPolicyOfflineStatus(Z)V

    return-void
.end method

.method public static final addSdkMetadata(Landroid/content/Context;Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/braze/enums/BrazeSdkMetadata;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/Braze$Companion;->addSdkMetadata(Landroid/content/Context;Ljava/util/EnumSet;)V

    return-void
.end method

.method private static final addSerializedCardJsonToStorage$lambda$178(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to update ContentCard storage provider with single card update. User id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    const-string v0, " Serialized json: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final addSerializedCardJsonToStorage$lambda$180(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda69;

    invoke-direct {v6, p2, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda69;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 8
    :cond_0
    new-instance v0, Lcom/braze/models/response/c;

    invoke-direct {v0, p0}, Lcom/braze/models/response/c;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 10
    iget-object p0, p0, Lcom/braze/managers/u0;->C:Lcom/braze/storage/p;

    .line 11
    invoke-virtual {p0, v0, p2}, Lcom/braze/storage/p;->a(Lcom/braze/models/response/c;Ljava/lang/String;)Lcom/braze/events/ContentCardsUpdatedEvent;

    .line 12
    iget-object p0, p1, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 13
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 14
    iget-object p1, p1, Lcom/braze/managers/u0;->C:Lcom/braze/storage/p;

    const/4 p2, 0x1

    .line 15
    invoke-virtual {p1, p2}, Lcom/braze/storage/p;->a(Z)Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object p1

    .line 16
    check-cast p0, Lcom/braze/events/d;

    const-class p2, Lcom/braze/events/ContentCardsUpdatedEvent;

    invoke-virtual {p0, p1, p2}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final addSerializedCardJsonToStorage$lambda$180$lambda$179(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot add null or blank card json to storage. Returning. User id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    const-string v0, " Serialized json: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final addSingleSynchronousSubscription$lambda$125(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to add synchronous subscriber for class: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final applyPendingRuntimeConfiguration$lambda$195$lambda$192()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Applying any pending runtime configuration values"

    return-object v0
.end method

.method private static final applyPendingRuntimeConfiguration$lambda$195$lambda$193()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Clearing config values"

    return-object v0
.end method

.method private static final applyPendingRuntimeConfiguration$lambda$195$lambda$194(Lcom/braze/configuration/BrazeConfig;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting pending config object: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final areCachedContentCardsStale$lambda$145()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The ContentCardsUpdatedEvent was null. Returning false for stale check."

    return-object v0
.end method

.method private static final changeUser$lambda$130(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to set external id to: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final changeUser$lambda$138(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    if-eqz v0, :cond_d

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 5
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/braze/support/StringUtils;->getByteSize(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e5

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 6
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda50;

    invoke-direct {v5, v0}, Lcom/braze/Braze$$ExternalSyntheticLambda50;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v1

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 11
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 13
    :cond_1
    iget-object v1, v9, Lcom/braze/Braze;->brazeUser:Lcom/braze/BrazeUser;

    const-string v11, "brazeUser"

    const/4 v12, 0x0

    if-nez v1, :cond_2

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v12

    :cond_2
    invoke-virtual {v1}, Lcom/braze/BrazeUser;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 15
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda51;

    invoke-direct {v5, v0}, Lcom/braze/Braze$$ExternalSyntheticLambda51;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    if-eqz v10, :cond_c

    .line 18
    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 19
    :cond_3
    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda52;

    invoke-direct {v5, v10}, Lcom/braze/Braze$$ExternalSyntheticLambda52;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 21
    iget-object v0, v0, Lcom/braze/managers/u0;->t:Lcom/braze/storage/z;

    .line 22
    invoke-virtual {v0, v10}, Lcom/braze/storage/z;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 25
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v2

    check-cast v2, Lcom/braze/managers/u0;

    .line 26
    iget-object v2, v2, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 27
    iget-object v3, v2, Lcom/braze/events/d;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 31
    :try_start_0
    iget-object v2, v2, Lcom/braze/events/d;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v4, Lcom/braze/events/ContentCardsUpdatedEvent;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v2

    check-cast v2, Lcom/braze/managers/u0;

    .line 34
    iget-object v2, v2, Lcom/braze/managers/u0;->s:Lcom/braze/managers/k0;

    .line 35
    invoke-virtual {v2}, Lcom/braze/managers/k0;->a()V

    .line 37
    const-string v2, ""

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "offlineUserStorageProvider"

    if-eqz v2, :cond_7

    .line 55
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda53;

    invoke-direct {v6, v0}, Lcom/braze/Braze$$ExternalSyntheticLambda53;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 62
    iget-object v1, v9, Lcom/braze/Braze;->offlineUserStorageProvider:Lcom/braze/configuration/e;

    if-nez v1, :cond_5

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v12

    :cond_5
    invoke-virtual {v1, v0}, Lcom/braze/configuration/e;->b(Ljava/lang/String;)V

    .line 63
    iget-object v1, v9, Lcom/braze/Braze;->brazeUser:Lcom/braze/BrazeUser;

    if-nez v1, :cond_6

    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v12

    :cond_6
    invoke-virtual {v1, v0}, Lcom/braze/BrazeUser;->setUserId(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_7
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda54;

    invoke-direct {v6, v1, v0}, Lcom/braze/Braze$$ExternalSyntheticLambda54;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 67
    new-instance v7, Lcom/braze/events/FeedUpdatedEvent;

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-static {}, Lcom/braze/support/DateTimeUtils;->nowInSeconds()J

    move-result-wide v5

    const/4 v4, 0x0

    move-object v1, v7

    move-object/from16 v3, p0

    .line 72
    invoke-direct/range {v1 .. v6}, Lcom/braze/events/FeedUpdatedEvent;-><init>(Ljava/util/List;Ljava/lang/String;ZJ)V

    .line 78
    iget-object v1, v9, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    check-cast v1, Lcom/braze/events/d;

    const-class v2, Lcom/braze/events/FeedUpdatedEvent;

    invoke-virtual {v1, v7, v2}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 81
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v1

    check-cast v1, Lcom/braze/managers/u0;

    .line 82
    iget-object v1, v1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 83
    invoke-virtual {v1}, Lcom/braze/managers/m;->f()V

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v1

    check-cast v1, Lcom/braze/managers/u0;

    .line 87
    iget-object v1, v1, Lcom/braze/managers/u0;->n:Lcom/braze/managers/y;

    .line 88
    invoke-virtual {v1}, Lcom/braze/managers/y;->a()V

    .line 92
    iget-object v1, v9, Lcom/braze/Braze;->offlineUserStorageProvider:Lcom/braze/configuration/e;

    if-nez v1, :cond_8

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v12

    :cond_8
    invoke-virtual {v1, v0}, Lcom/braze/configuration/e;->b(Ljava/lang/String;)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v8

    .line 99
    new-instance v0, Lcom/braze/managers/u0;

    .line 100
    iget-object v15, v9, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    .line 101
    iget-object v1, v9, Lcom/braze/Braze;->offlineUserStorageProvider:Lcom/braze/configuration/e;

    if-nez v1, :cond_9

    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object/from16 v16, v12

    goto :goto_1

    :cond_9
    move-object/from16 v16, v1

    .line 102
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v17

    .line 103
    iget-object v1, v9, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getDeviceIdProvider$android_sdk_base_release()Lcom/braze/managers/e0;

    move-result-object v19

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getRegistrationDataProvider$android_sdk_base_release()Lcom/braze/managers/g0;

    move-result-object v20

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getPushDeliveryManager$android_sdk_base_release()Lcom/braze/managers/i0;

    move-result-object v21

    .line 107
    sget-boolean v22, Lcom/braze/Braze;->shouldMockNetworkRequestsAndDropEvents:Z

    .line 108
    sget-boolean v23, Lcom/braze/Braze;->areOutboundNetworkRequestsOffline:Z

    .line 109
    invoke-direct/range {p1 .. p1}, Lcom/braze/Braze;->getDeviceDataProvider()Lcom/braze/managers/d0;

    move-result-object v24

    .line 110
    sget-boolean v25, Lcom/braze/Braze;->shouldRequestFrameworkListenToNetworkUpdates:Z

    move-object v14, v0

    move-object/from16 v18, v1

    .line 111
    invoke-direct/range {v14 .. v25}, Lcom/braze/managers/u0;-><init>(Landroid/content/Context;Lcom/braze/configuration/e;Lcom/braze/configuration/BrazeConfigurationProvider;Lcom/braze/events/e;Lcom/braze/managers/e0;Lcom/braze/managers/g0;Lcom/braze/managers/i0;ZZLcom/braze/managers/d0;Z)V

    .line 127
    invoke-direct {v9, v0}, Lcom/braze/Braze;->setUserSpecificMemberVariablesAndStartDispatch(Lcom/braze/managers/u0;)V

    if-eqz v10, :cond_b

    .line 130
    invoke-static/range {p2 .. p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 131
    :cond_a
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda56;

    invoke-direct {v5, v10}, Lcom/braze/Braze$$ExternalSyntheticLambda56;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 133
    iget-object v0, v0, Lcom/braze/managers/u0;->t:Lcom/braze/storage/z;

    .line 134
    invoke-virtual {v0, v10}, Lcom/braze/storage/z;->b(Ljava/lang/String;)V

    .line 138
    :cond_b
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    invoke-virtual {v0}, Lcom/braze/managers/u0;->a()Lcom/braze/storage/h0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/storage/h0;->j()V

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 142
    iget-object v0, v0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 143
    invoke-virtual {v0}, Lcom/braze/managers/m;->o()V

    .line 144
    check-cast v8, Lcom/braze/managers/u0;

    .line 145
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 146
    sget-object v0, Lcom/braze/coroutine/BrazeCoroutineScope;->INSTANCE:Lcom/braze/coroutine/BrazeCoroutineScope;

    new-instance v3, Lcom/braze/managers/t0;

    invoke-direct {v3, v8, v12}, Lcom/braze/managers/t0;-><init>(Lcom/braze/managers/u0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 147
    :cond_c
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    .line 148
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 149
    :cond_d
    :goto_4
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda57;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda57;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 150
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method private static final changeUser$lambda$138$lambda$131()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "userId passed to changeUser was null or empty. The current user will remain the active user."

    return-object v0
.end method

.method private static final changeUser$lambda$138$lambda$132(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Rejected user id with byte length longer than 997. Not changing user. Input user id: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final changeUser$lambda$138$lambda$133(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Received request to change current user "

    const-string v1, " to the same user id. Not changing user."

    invoke-static {v0, p0, v1}, Lcom/braze/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final changeUser$lambda$138$lambda$134(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Set sdk auth signature on changeUser call: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final changeUser$lambda$138$lambda$135(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Changing anonymous user to "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final changeUser$lambda$138$lambda$136(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Changing current user "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " to new user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final changeUser$lambda$138$lambda$137(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Set sdk auth signature on changeUser call: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final clearEndpointProvider()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->clearEndpointProvider()V

    return-void
.end method

.method private static final closeSession$lambda$41()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to close session."

    return-object v0
.end method

.method private static final closeSession$lambda$43(Landroid/app/Activity;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    if-nez p0, :cond_0

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda150;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda150;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 5
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 6
    invoke-virtual {p1, p0}, Lcom/braze/managers/m;->a(Landroid/app/Activity;)V

    .line 7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final closeSession$lambda$43$lambda$42()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cannot close session with null activity."

    return-object v0
.end method

.method public static final configure(Landroid/content/Context;Lcom/braze/configuration/BrazeConfig;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/braze/Braze$Companion;->configure(Landroid/content/Context;Lcom/braze/configuration/BrazeConfig;)Z

    move-result p0

    return p0
.end method

.method private static final deserializeContentCard$lambda$146()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cannot deserialize null content card json string. Returning null."

    return-object v0
.end method

.method private static final deserializeContentCard$lambda$147(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to deserialize content card json string. Payload: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final deserializeContentCard$lambda$148(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to deserialize content card json. Payload: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final deserializeInAppMessageString$lambda$157(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to deserialize in-app message json. Payload: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final disableSdk(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->disableSdk(Landroid/content/Context;)V

    return-void
.end method

.method public static final enableMockNetworkRequestsAndDropEventsMode()Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->enableMockNetworkRequestsAndDropEventsMode()Z

    move-result v0

    return v0
.end method

.method public static final enableSdk(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->enableSdk(Landroid/content/Context;)V

    return-void
.end method

.method private static final getAllFeatureFlags$lambda$87()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to get all feature flags"

    return-object v0
.end method

.method public static final getApiEndpoint(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->getApiEndpoint(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static final getBanner$lambda$101(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to get Banner "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getCachedContentCards$lambda$144()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The ContentCardsUpdatedEvent was null. Returning null for the list of cached cards."

    return-object v0
.end method

.method private final getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;
    .locals 8

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda140;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda140;-><init>()V

    new-instance v5, Lcom/braze/d;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/braze/d;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/Braze;->runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/events/ContentCardsUpdatedEvent;

    return-object v0
.end method

.method public static synthetic getConfigurationProvider$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method private static final getConfigurationProviderSafe$lambda$221()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ConfigurationProvider has not been initialized. Constructing a new one."

    return-object v0
.end method

.method public static final getConfiguredApiKey(Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->getConfiguredApiKey(Lcom/braze/configuration/BrazeConfigurationProvider;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final getContentCardCount$lambda$141()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The ContentCardsUpdatedEvent was null. Returning the default value for the card count."

    return-object v0
.end method

.method private static final getContentCardUnviewedCount$lambda$142()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The ContentCardsUpdatedEvent was null. Returning the default value for the unviewed card count."

    return-object v0
.end method

.method private static final getContentCardsLastUpdatedInSecondsFromEpoch$lambda$143()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The ContentCardsUpdatedEvent was null. Returning the default value for the last update timestamp."

    return-object v0
.end method

.method private static final getCurrentUser$lambda$139()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to retrieve the current user."

    return-object v0
.end method

.method public static final getCustomBrazeNotificationFactory()Lcom/braze/IBrazeNotificationFactory;
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->getCustomBrazeNotificationFactory()Lcom/braze/IBrazeNotificationFactory;

    move-result-object v0

    return-object v0
.end method

.method private final getDeviceDataProvider()Lcom/braze/managers/d0;
    .locals 3

    .line 1
    sget-object v0, Lcom/braze/Braze;->deviceDataProvider:Lcom/braze/managers/d0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/braze/managers/t;

    .line 2
    iget-object v1, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/braze/managers/t;-><init>(Landroid/content/Context;Lcom/braze/configuration/BrazeConfigurationProvider;)V

    .line 8
    :cond_0
    sput-object v0, Lcom/braze/Braze;->deviceDataProvider:Lcom/braze/managers/d0;

    return-object v0
.end method

.method private static final getDeviceIdAsync$lambda$140()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to retrieve the current device id."

    return-object v0
.end method

.method public static synthetic getDeviceIdProvider$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getExternalIEventMessenger$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method private static final getFeatureFlag$lambda$88(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to get feature flag "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/braze/Braze;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p0

    return-object p0
.end method

.method public static final getOutboundNetworkRequestsOffline()Z
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->getOutboundNetworkRequestsOffline()Z

    move-result v0

    return v0
.end method

.method public static synthetic getPushDeliveryManager$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getRegistrationDataProvider$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getUdm$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method private static final handleInAppMessageTestPush$lambda$188()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Error handling test in-app message push"

    return-object v0
.end method

.method private static final handleInAppMessageTestPush$lambda$189(Landroid/content/Intent;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 2
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/braze/Braze$Companion;->requestTriggersIfInAppMessageTestPush$android_sdk_base_release(Landroid/content/Intent;Lcom/braze/managers/c0;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final handleInternalBannerRefresh$lambda$190()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Error handling banner push refresh"

    return-object v0
.end method

.method private static final handleInternalBannerRefresh$lambda$191(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->A:Lcom/braze/managers/h;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/braze/managers/h;->a(Z)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic isApiKeyPresent$android_sdk_base_release$annotations()V
    .locals 0

    return-void
.end method

.method public static final isDisabled()Z
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0}, Lcom/braze/Braze$Companion;->isDisabled()Z

    move-result v0

    return v0
.end method

.method private final isEphemeralEventKey(Ljava/lang/String;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->isEphemeralEventsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda6;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda6;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getEphemeralEventKeys()Ljava/util/Set;

    move-result-object v0

    .line 6
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 7
    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda7;

    invoke-direct {v5, p1, v0, v10}, Lcom/braze/Braze$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;Ljava/util/Set;Z)V

    move-object v0, v8

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return v10
.end method

.method private static final isEphemeralEventKey$lambda$217()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Ephemeral events enabled"

    return-object v0
.end method

.method private static final isEphemeralEventKey$lambda$218(Ljava/lang/String;Ljava/util/Set;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Checking event key ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "] against ephemeral event list "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    const-string p1, " and got match?: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final lambda$2$lambda$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Device build model matches a known crawler. Enabling mock network request mode. Device it: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final lambda$27$lambda$10()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**                Replace \"rest\" with \"sdk\" in your configuration                    **"

    return-object v0
.end method

.method static final lambda$27$lambda$11()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**                                        See                                        **"

    return-object v0
.end method

.method static final lambda$27$lambda$12()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**  https://www.braze.com/docs/user_guide/administrative/access_braze/sdk_endpoints  **"

    return-object v0
.end method

.method static final lambda$27$lambda$13()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**                                                                                   **"

    return-object v0
.end method

.method static final lambda$27$lambda$14()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "***************************************************************************************"

    return-object v0
.end method

.method static final lambda$27$lambda$15()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Firebase Cloud Messaging found. Setting up Firebase Cloud Messaging."

    return-object v0
.end method

.method static final lambda$27$lambda$17()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Firebase Cloud Messaging requirements not met. Braze will not register for Firebase Cloud Messaging."

    return-object v0
.end method

.method static final lambda$27$lambda$18()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Automatic Firebase Cloud Messaging registration not enabled in configuration. Braze will not register for Firebase Cloud Messaging."

    return-object v0
.end method

.method static final lambda$27$lambda$19()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Amazon Device Messaging found. Setting up Amazon Device Messaging"

    return-object v0
.end method

.method static final lambda$27$lambda$20()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ADM manifest requirements not met. Braze will not register for ADM."

    return-object v0
.end method

.method static final lambda$27$lambda$21()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Automatic ADM registration not enabled in configuration. Braze will not register for ADM."

    return-object v0
.end method

.method static final lambda$27$lambda$22()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to setup pre SDK tasks"

    return-object v0
.end method

.method static final lambda$27$lambda$23()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Starting up a new user dependency manager"

    return-object v0
.end method

.method static final lambda$27$lambda$24()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Finished UserDependencyManager creation."

    return-object v0
.end method

.method static final lambda$27$lambda$25()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to startup user dependency manager."

    return-object v0
.end method

.method static final lambda$27$lambda$26()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Finished singleton setup."

    return-object v0
.end method

.method static final lambda$27$lambda$4()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "***************************************************************************************"

    return-object v0
.end method

.method static final lambda$27$lambda$5()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**                                                                                   **"

    return-object v0
.end method

.method static final lambda$27$lambda$6()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**                                   !! WARNING !!                                   **"

    return-object v0
.end method

.method static final lambda$27$lambda$7()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**                                                                                   **"

    return-object v0
.end method

.method static final lambda$27$lambda$8()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**                       You are using a Braze REST API endpoint                     **"

    return-object v0
.end method

.method static final lambda$27$lambda$9()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "**                             instead of an SDK endpoint                            **"

    return-object v0
.end method

.method private static final logBannerClick$lambda$103(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Failed to log a Banner impression for "

    const/16 v1, 0x2e

    invoke-static {v0, p0, v1}, Lcom/braze/b;->a(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logBannerClick$lambda$104(Lcom/braze/Braze;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->A:Lcom/braze/managers/h;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/braze/managers/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logBannerImpression$lambda$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Failed to log a Banner impression for "

    const/16 v1, 0x2e

    invoke-static {v0, p0, v1}, Lcom/braze/b;->a(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logCustomEvent$lambda$44(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log custom event: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logCustomEvent$lambda$50(Lcom/braze/Braze;Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;Lcom/braze/models/outgoing/BrazeProperties;)Lkotlin/Unit;
    .locals 12

    .line 1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v9, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda171;

    invoke-direct {v5, p1, p3}, Lcom/braze/Braze$$ExternalSyntheticLambda171;-><init>(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 6
    iget-object v0, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 7
    invoke-static {p1, v0}, Lcom/braze/support/ValidationUtils;->isValidLogCustomEventInput(Ljava/lang/String;Lcom/braze/storage/e0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda172;

    invoke-direct {v5, v10}, Lcom/braze/Braze$$ExternalSyntheticLambda172;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 14
    invoke-virtual {p2}, Lcom/braze/models/outgoing/BrazeProperties;->isInvalid()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 15
    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda173;

    invoke-direct {v5, v10}, Lcom/braze/Braze$$ExternalSyntheticLambda173;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 21
    :cond_1
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/braze/support/ValidationUtils;->ensureBrazeFieldLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    invoke-virtual {v1, v0, p2}, Lcom/braze/models/outgoing/event/a;->a(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)Lcom/braze/models/i;

    move-result-object v11

    if-nez v11, :cond_2

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 24
    :cond_2
    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda175;

    invoke-direct {v5, p1, p3}, Lcom/braze/Braze$$ExternalSyntheticLambda175;-><init>(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 25
    iget-object p1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/braze/Braze;->isEphemeralEventKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 28
    iget-object p1, p1, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 29
    invoke-virtual {p1}, Lcom/braze/storage/e0;->F()Z

    move-result p1

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 33
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 34
    invoke-virtual {p1, v11}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    .line 37
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 38
    iget-object p0, p0, Lcom/braze/managers/u0;->F:Lcom/braze/triggers/managers/f;

    .line 39
    new-instance p1, Lcom/braze/triggers/events/a;

    iget-object p3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    invoke-direct {p1, p3, p2, v11}, Lcom/braze/triggers/events/a;-><init>(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;Lcom/braze/models/i;)V

    invoke-virtual {p0, p1}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/events/i;)V

    goto :goto_1

    .line 41
    :cond_4
    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda176;

    invoke-direct {v5, v10}, Lcom/braze/Braze$$ExternalSyntheticLambda176;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, v9

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 43
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logCustomEvent$lambda$50$lambda$45(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Called logCustomEvent for custom event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " and properties "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logCustomEvent$lambda$50$lambda$46(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logged custom event with name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2
    const-string v1, " was invalid. Not logging custom event to Braze."

    invoke-static {v0, p0, v1}, Lcom/braze/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logCustomEvent$lambda$50$lambda$47(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Custom event with name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2
    const-string v1, " logged with invalid properties. Not logging custom event to Braze."

    invoke-static {v0, p0, v1}, Lcom/braze/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logCustomEvent$lambda$50$lambda$48(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Logging custom event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " and properties "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logCustomEvent$lambda$50$lambda$49(Lkotlin/jvm/internal/Ref$ObjectRef;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not passing event with name "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    .line 2
    const-string v1, " to trigger manager"

    invoke-static {v0, p0, v1}, Lcom/braze/c;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logFeatureFlagImpression$lambda$89()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log a Feature Flag impression."

    return-object v0
.end method

.method private static final logFeatureFlagImpression$lambda$90(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->z:Lcom/braze/managers/a0;

    .line 3
    invoke-virtual {p0, p1}, Lcom/braze/managers/a0;->c(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logFeedCardClick$lambda$153(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log feed card clicked. Card id: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logFeedCardClick$lambda$156(Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    invoke-virtual {v0, p0}, Lcom/braze/models/outgoing/event/a;->k(Ljava/lang/String;)Lcom/braze/models/i;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 7
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 8
    invoke-virtual {p1, p0}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 10
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 11
    :cond_2
    :goto_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda16;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda16;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logFeedCardClick$lambda$156$lambda$154()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Card ID cannot be null or blank."

    return-object v0
.end method

.method private static final logFeedCardImpression$lambda$149(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log feed card impression. Card id: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logFeedCardImpression$lambda$152(Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    invoke-virtual {v0, p0}, Lcom/braze/models/outgoing/event/a;->m(Ljava/lang/String;)Lcom/braze/models/i;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v1

    check-cast v1, Lcom/braze/managers/u0;

    .line 7
    iget-object v1, v1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 8
    invoke-virtual {v1, v0}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 11
    iget-object p1, p1, Lcom/braze/managers/u0;->B:Lcom/braze/storage/x;

    .line 12
    invoke-virtual {p1, p0}, Lcom/braze/storage/x;->markCardAsViewed(Ljava/lang/String;)V

    .line 13
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 14
    :cond_2
    :goto_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda193;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda193;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logFeedCardImpression$lambda$152$lambda$150()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Card ID cannot be null or blank."

    return-object v0
.end method

.method private static final logFeedDisplayed$lambda$72()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log that the feed was displayed."

    return-object v0
.end method

.method private static final logFeedDisplayed$lambda$74(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    .line 2
    invoke-virtual {v0}, Lcom/braze/models/outgoing/event/a;->a()Lcom/braze/models/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 4
    iget-object p0, p0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 5
    invoke-virtual {p0, v0}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 7
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logLocationRecordedEventFromLocationUpdate$lambda$181()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log location recorded event."

    return-object v0
.end method

.method private static final logLocationRecordedEventFromLocationUpdate$lambda$183(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    invoke-virtual {v0, p0}, Lcom/braze/models/outgoing/event/a;->a(Lcom/braze/models/IBrazeLocation;)Lcom/braze/models/i;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 3
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 4
    invoke-virtual {p1, p0}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logPurchase$lambda$51(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log purchase event of: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logPurchase$lambda$54(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/Braze;Lcom/braze/models/outgoing/BrazeProperties;)Lkotlin/Unit;
    .locals 10

    .line 1
    invoke-virtual {p4}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 2
    iget-object v0, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/braze/support/ValidationUtils;->isValidLogPurchaseInput(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/storage/e0;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda80;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda80;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p4

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    if-eqz p5, :cond_1

    .line 7
    invoke-virtual {p5}, Lcom/braze/models/outgoing/BrazeProperties;->isInvalid()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 8
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/Braze$$ExternalSyntheticLambda81;

    invoke-direct {v7}, Lcom/braze/Braze$$ExternalSyntheticLambda81;-><init>()V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p4

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 11
    :cond_1
    invoke-static {p0}, Lcom/braze/support/ValidationUtils;->ensureBrazeFieldLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    sget-object v0, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/braze/models/outgoing/event/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)Lcom/braze/models/i;

    move-result-object p1

    if-nez p1, :cond_2

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 14
    :cond_2
    invoke-virtual {p4}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p2

    check-cast p2, Lcom/braze/managers/u0;

    .line 15
    iget-object p2, p2, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 16
    invoke-virtual {p2, p1}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p4}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p2

    check-cast p2, Lcom/braze/managers/u0;

    .line 18
    iget-object p2, p2, Lcom/braze/managers/u0;->F:Lcom/braze/triggers/managers/f;

    .line 19
    new-instance p3, Lcom/braze/triggers/events/f;

    invoke-direct {p3, p0, p5, p1}, Lcom/braze/triggers/events/f;-><init>(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;Lcom/braze/models/i;)V

    invoke-virtual {p2, p3}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/events/i;)V

    .line 21
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logPurchase$lambda$54$lambda$52()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Log purchase input was invalid. Not logging in-app purchase to Braze."

    return-object v0
.end method

.method private static final logPurchase$lambda$54$lambda$53()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Purchase logged with invalid properties. Not logging custom event to Braze."

    return-object v0
.end method

.method private static final logPushDelivery$lambda$200(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Error logging Push Delivery "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logPushDelivery$lambda$201(Lcom/braze/Braze;Ljava/lang/String;J)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 2
    iget-object v0, v0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 3
    invoke-virtual {v0, p1}, Lcom/braze/managers/m;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/braze/Braze;->schedulePushDelivery$android_sdk_base_release(J)V

    .line 5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logPushMaxCampaign$lambda$206()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log push max campaign"

    return-object v0
.end method

.method private static final logPushMaxCampaign$lambda$207(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 3
    invoke-virtual {p0, p1}, Lcom/braze/managers/m;->c(Ljava/lang/String;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logPushNotificationActionClicked$lambda$63()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to log push notification action clicked."

    return-object v0
.end method

.method private static final logPushNotificationActionClicked$lambda$67(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;Ljava/lang/String;)Lkotlin/Unit;
    .locals 8

    if-eqz p0, :cond_5

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    .line 8
    invoke-static {p2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    .line 12
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 17
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 18
    sget v0, Lcom/braze/models/outgoing/event/push/a;->j:I

    .line 19
    const-string v0, "campaignId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string v1, "cid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string p0, "a"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    new-instance p0, Lcom/braze/models/outgoing/event/push/a;

    sget-object p2, Lcom/braze/enums/e;->b:Lcom/braze/enums/d;

    invoke-direct {p0, v0, p3}, Lcom/braze/models/outgoing/event/push/a;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1, p0}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 52
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 53
    :cond_3
    :goto_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda200;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda200;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 54
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 55
    :cond_4
    :goto_1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda201;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda201;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 56
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 57
    :cond_5
    :goto_2
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda202;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda202;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logPushNotificationActionClicked$lambda$67$lambda$64()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "No campaign Id associated with this notification (this is expected for test sends). Not logging push notification action clicked."

    return-object v0
.end method

.method private static final logPushNotificationActionClicked$lambda$67$lambda$65()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Action ID cannot be null or blank."

    return-object v0
.end method

.method private static final logPushNotificationActionClicked$lambda$67$lambda$66()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Action Type cannot be null or blank."

    return-object v0
.end method

.method private static final logPushNotificationOpened$lambda$55(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "Failed to log push open for \'"

    const/16 v1, 0x27

    invoke-static {v0, p0, v1}, Lcom/braze/b;->a(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logPushNotificationOpened$lambda$57(Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 9
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 10
    sget v0, Lcom/braze/models/outgoing/event/push/b;->i:I

    const-string v0, "campaignId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 12
    const-string v1, "cid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    new-instance p0, Lcom/braze/models/outgoing/event/push/b;

    sget-object v1, Lcom/braze/enums/e;->b:Lcom/braze/enums/d;

    invoke-direct {p0, v0}, Lcom/braze/models/outgoing/event/push/b;-><init>(Lorg/json/JSONObject;)V

    .line 14
    invoke-virtual {p1, p0}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 16
    :cond_1
    :goto_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda204;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda204;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 20
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logPushNotificationOpened$lambda$57$lambda$56()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "No campaign Id associated with this notification (this is expected for test sends). Not logging push notification opened."

    return-object v0
.end method

.method private static final logPushNotificationOpened$lambda$58(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error logging push notification with intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logPushNotificationOpened$lambda$62(Landroid/content/Intent;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 12

    if-nez p0, :cond_0

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda55;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda55;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 6
    :cond_0
    const-string v0, "cid"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    sget-object v3, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v5, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v8, Lcom/braze/Braze$$ExternalSyntheticLambda66;

    invoke-direct {v8, v1}, Lcom/braze/Braze$$ExternalSyntheticLambda66;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v3 .. v10}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v2

    check-cast v2, Lcom/braze/managers/u0;

    .line 10
    iget-object v2, v2, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 11
    sget v3, Lcom/braze/models/outgoing/event/push/b;->i:I

    const-string v3, "campaignId"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 13
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    new-instance v0, Lcom/braze/models/outgoing/event/push/b;

    sget-object v1, Lcom/braze/enums/e;->b:Lcom/braze/enums/d;

    invoke-direct {v0, v3}, Lcom/braze/models/outgoing/event/push/b;-><init>(Lorg/json/JSONObject;)V

    .line 15
    invoke-virtual {v2, v0}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/Braze$$ExternalSyntheticLambda77;

    invoke-direct {v9}, Lcom/braze/Braze$$ExternalSyntheticLambda77;-><init>()V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 22
    :goto_1
    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 23
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 24
    invoke-virtual {v0, p0, p1}, Lcom/braze/Braze$Companion;->requestTriggersIfInAppMessageTestPush$android_sdk_base_release(Landroid/content/Intent;Lcom/braze/managers/c0;)V

    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logPushNotificationOpened$lambda$62$lambda$59()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cannot logPushNotificationOpened with null intent. Not logging push click."

    return-object v0
.end method

.method private static final logPushNotificationOpened$lambda$62$lambda$60(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Logging push click. Campaign Id: "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logPushNotificationOpened$lambda$62$lambda$61()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "No campaign Id associated with this notification (this is expected for test sends). Not logging push click."

    return-object v0
.end method

.method private static final logPushStoryPageClicked$lambda$68(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to log push story page clicked for pageId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " campaignId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final logPushStoryPageClicked$lambda$71(Ljava/lang/String;Ljava/lang/String;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-static {p0, p1}, Lcom/braze/support/ValidationUtils;->isValidPushStoryClickInput(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda125;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda125;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 9
    :cond_0
    sget-object v0, Lcom/braze/models/outgoing/event/b;->g:Lcom/braze/models/outgoing/event/a;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0, p1}, Lcom/braze/models/outgoing/event/a;->o(Ljava/lang/String;Ljava/lang/String;)Lcom/braze/models/i;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p2}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 11
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 12
    invoke-virtual {p1, p0}, Lcom/braze/managers/m;->a(Lcom/braze/models/i;)Z

    .line 14
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final logPushStoryPageClicked$lambda$71$lambda$69()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Push story page click input was invalid. Not logging in-app purchase to Braze."

    return-object v0
.end method

.method private static final openSession$lambda$38()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to open session."

    return-object v0
.end method

.method private static final openSession$lambda$40(Landroid/app/Activity;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    if-nez p0, :cond_0

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda205;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda205;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 5
    iget-object p1, p1, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 6
    invoke-virtual {p1, p0}, Lcom/braze/managers/m;->c(Landroid/app/Activity;)V

    .line 7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final openSession$lambda$40$lambda$39()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cannot open session with null activity."

    return-object v0
.end method

.method private static final performPushDeliveryFlush$lambda$204()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to flush push delivery events"

    return-object v0
.end method

.method private static final performPushDeliveryFlush$lambda$205(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/braze/managers/m;->a(J)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private final publishError(Ljava/lang/Throwable;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->udm:Lcom/braze/managers/h0;

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda4;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 7
    iget-object v0, v0, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 8
    const-class v1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 10
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda5;

    invoke-direct {v6, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Throwable;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private static final publishError$lambda$212()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "User dependency manager is uninitialized. Not publishing error."

    return-object v0
.end method

.method private static final publishError$lambda$213(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to log throwable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final recordGeofenceTransition$lambda$171()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to post geofence report."

    return-object v0
.end method

.method private static final recordGeofenceTransition$lambda$172(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 1

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p2

    check-cast p2, Lcom/braze/managers/u0;

    .line 5
    iget-object p2, p2, Lcom/braze/managers/u0;->x:Lcom/braze/managers/BrazeGeofenceManager;

    .line 6
    invoke-virtual {p2, p0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->postGeofenceReport(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V

    .line 7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 8
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final reenqueueInAppMessage$lambda$198(Lcom/braze/events/InAppMessageEvent;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error reenqueueing In-App Message from event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final reenqueueInAppMessage$lambda$199(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->F:Lcom/braze/triggers/managers/f;

    .line 3
    invoke-virtual {p1}, Lcom/braze/events/InAppMessageEvent;->getTriggerAction()Lcom/braze/triggers/actions/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/braze/triggers/managers/f;->b(Lcom/braze/triggers/actions/a;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final refreshFeatureFlags$lambda$84()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to refresh feature flags."

    return-object v0
.end method

.method private static final refreshFeatureFlags$lambda$86(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 2
    iget-object v0, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 3
    invoke-virtual {v0}, Lcom/braze/storage/e0;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 5
    iget-object p0, p0, Lcom/braze/managers/u0;->z:Lcom/braze/managers/a0;

    .line 6
    invoke-virtual {p0}, Lcom/braze/managers/a0;->f()V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda84;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda84;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 11
    iget-object p0, p0, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 12
    new-instance v0, Lcom/braze/events/internal/j;

    invoke-direct {v0}, Lcom/braze/events/internal/j;-><init>()V

    .line 13
    const-class v1, Lcom/braze/events/internal/j;

    invoke-virtual {p0, v0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 18
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final refreshFeatureFlags$lambda$86$lambda$85()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Feature flags not enabled. Not refreshing feature flags."

    return-object v0
.end method

.method private static final removeSingleSubscription$lambda$128$lambda$126(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Did remove the background "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "? "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final removeSingleSubscription$lambda$128$lambda$127(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Did remove the synchronous "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "? "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final removeSingleSubscription$lambda$129(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to remove "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " subscriber."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final requestBannersRefresh$lambda$100(Ljava/util/List;Lcom/braze/Braze;Lcom/braze/events/IValueCallback;)Lkotlin/Unit;
    .locals 12

    .line 1
    sget-object v0, Lcom/braze/managers/h;->k:Lcom/braze/managers/g;

    invoke-virtual {v0, p0}, Lcom/braze/managers/g;->a(Ljava/util/List;)V

    .line 2
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 3
    iget-object v0, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 4
    invoke-virtual {v0}, Lcom/braze/storage/e0;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 6
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    if-eqz p2, :cond_1

    .line 24
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda60;

    invoke-direct {v2, p2, v0, v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda60;-><init>(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;)V

    iput-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 29
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda61;

    invoke-direct {v2, p2, v0, v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda61;-><init>(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;)V

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 34
    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/braze/events/IFireOnceEventSubscriber;

    if-eqz v2, :cond_0

    .line 35
    iget-object v3, p1, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 36
    check-cast v3, Lcom/braze/events/d;

    const-class v4, Lcom/braze/events/BannersUpdatedEvent;

    invoke-virtual {v3, v4, v2}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    .line 42
    :cond_0
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/braze/events/IFireOnceEventSubscriber;

    if-eqz v2, :cond_1

    .line 43
    iget-object v3, p1, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 44
    check-cast v3, Lcom/braze/events/d;

    const-class v4, Lcom/braze/events/internal/b;

    invoke-virtual {v3, v4, v2}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    .line 51
    :cond_1
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v2

    check-cast v2, Lcom/braze/managers/u0;

    .line 52
    iget-object v2, v2, Lcom/braze/managers/u0;->A:Lcom/braze/managers/h;

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v2, p0, v3}, Lcom/braze/managers/h;->a(Ljava/util/List;Z)Z

    move-result p0

    if-nez p0, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 55
    iget-object p0, p0, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 56
    new-instance v2, Lcom/braze/events/internal/b;

    invoke-direct {v2}, Lcom/braze/events/internal/b;-><init>()V

    .line 57
    const-class v3, Lcom/braze/events/internal/b;

    invoke-virtual {p0, v2, v3}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 61
    invoke-static {v0, v1, p1}, Lcom/braze/Braze;->requestBannersRefresh$lambda$100$unsubscribeLocalListeners(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;)V

    if-eqz p2, :cond_3

    .line 62
    invoke-interface {p2}, Lcom/braze/events/IValueCallback;->onError()V

    goto :goto_0

    .line 65
    :cond_2
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->I:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/Braze$$ExternalSyntheticLambda62;

    invoke-direct {v9}, Lcom/braze/Braze$$ExternalSyntheticLambda62;-><init>()V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 70
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 71
    iget-object p0, p0, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 72
    new-instance p1, Lcom/braze/events/internal/b;

    invoke-direct {p1}, Lcom/braze/events/internal/b;-><init>()V

    .line 73
    const-class v0, Lcom/braze/events/internal/b;

    invoke-virtual {p0, p1, v0}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    if-eqz p2, :cond_3

    .line 77
    invoke-interface {p2}, Lcom/braze/events/IValueCallback;->onError()V

    .line 79
    :cond_3
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestBannersRefresh$lambda$100$lambda$98$lambda$94(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;Lcom/braze/events/BannersUpdatedEvent;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Lcom/braze/Braze;->requestBannersRefresh$lambda$100$unsubscribeLocalListeners(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;)V

    .line 2
    invoke-interface {p0, p4}, Lcom/braze/events/IValueCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method private static final requestBannersRefresh$lambda$100$lambda$98$lambda$95(Lcom/braze/events/IValueCallback;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;Lcom/braze/events/internal/b;)V
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2, p3}, Lcom/braze/Braze;->requestBannersRefresh$lambda$100$unsubscribeLocalListeners(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;)V

    .line 2
    invoke-interface {p0}, Lcom/braze/events/IValueCallback;->onError()V

    return-void
.end method

.method private static final requestBannersRefresh$lambda$100$lambda$99()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Banners not enabled. Not refreshing banners. Make sure you have at least one campaign and relaunch the app."

    return-object v0
.end method

.method private static final requestBannersRefresh$lambda$100$unsubscribeLocalListeners(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/braze/Braze;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/braze/events/IFireOnceEventSubscriber<",
            "Lcom/braze/events/BannersUpdatedEvent;",
            ">;>;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/braze/events/IFireOnceEventSubscriber<",
            "Lcom/braze/events/internal/b;",
            ">;>;",
            "Lcom/braze/Braze;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/braze/events/IFireOnceEventSubscriber;

    if-eqz p0, :cond_0

    .line 2
    iget-object v0, p2, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 3
    check-cast v0, Lcom/braze/events/d;

    const-class v1, Lcom/braze/events/BannersUpdatedEvent;

    invoke-virtual {v0, v1, p0}, Lcom/braze/events/d;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    .line 8
    :cond_0
    iget-object p0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/braze/events/IFireOnceEventSubscriber;

    if-eqz p0, :cond_1

    .line 9
    iget-object p1, p2, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 10
    check-cast p1, Lcom/braze/events/d;

    const-class p2, Lcom/braze/events/internal/b;

    invoke-virtual {p1, p2, p0}, Lcom/braze/events/d;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    :cond_1
    return-void
.end method

.method private static final requestBannersRefresh$lambda$91()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to refresh banners."

    return-object v0
.end method

.method private static final requestContentCardsRefresh$lambda$79()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to request Content Cards refresh from Braze servers."

    return-object v0
.end method

.method private static final requestContentCardsRefresh$lambda$81(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 15

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 2
    iget-object v0, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 3
    invoke-virtual {v0}, Lcom/braze/storage/e0;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 5
    iget-object v1, v0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 6
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 7
    iget-object v0, v0, Lcom/braze/managers/u0;->C:Lcom/braze/storage/p;

    .line 8
    iget-wide v2, v0, Lcom/braze/storage/p;->c:J

    .line 9
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 10
    iget-object p0, p0, Lcom/braze/managers/u0;->C:Lcom/braze/storage/p;

    .line 11
    iget-wide v4, p0, Lcom/braze/storage/p;->d:J

    const/4 v6, 0x0

    .line 12
    invoke-virtual/range {v1 .. v6}, Lcom/braze/managers/m;->a(JJI)V

    goto :goto_0

    .line 13
    :cond_0
    sget-object v7, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v12, Lcom/braze/Braze$$ExternalSyntheticLambda104;

    invoke-direct {v12}, Lcom/braze/Braze$$ExternalSyntheticLambda104;-><init>()V

    const/4 v13, 0x7

    const/4 v14, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, p0

    invoke-static/range {v7 .. v14}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 15
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestContentCardsRefresh$lambda$81$lambda$80()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Content Cards is not enabled, skipping API call to refresh"

    return-object v0
.end method

.method private static final requestContentCardsRefreshFromCache$lambda$82()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to request Content Cards refresh from the cache."

    return-object v0
.end method

.method private static final requestContentCardsRefreshFromCache$lambda$83(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 2
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 3
    iget-object p0, p0, Lcom/braze/managers/u0;->C:Lcom/braze/storage/p;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lcom/braze/storage/p;->a(Z)Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object p0

    .line 5
    check-cast v0, Lcom/braze/events/d;

    const-class v1, Lcom/braze/events/ContentCardsUpdatedEvent;

    invoke-virtual {v0, p0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestFeedRefresh$lambda$77()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to request refresh of feed."

    return-object v0
.end method

.method private static final requestFeedRefresh$lambda$78(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 3
    new-instance v0, Lcom/braze/models/outgoing/j;

    invoke-direct {v0}, Lcom/braze/models/outgoing/j;-><init>()V

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/braze/models/outgoing/j;->b:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p0, v0}, Lcom/braze/managers/m;->a(Lcom/braze/models/outgoing/j;)V

    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestFeedRefreshFromCache$lambda$75()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to retrieve and publish feed from offline cache."

    return-object v0
.end method

.method private static final requestFeedRefreshFromCache$lambda$76(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    .line 2
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 3
    iget-object v1, p0, Lcom/braze/managers/u0;->B:Lcom/braze/storage/x;

    .line 4
    iget-object p0, v1, Lcom/braze/storage/x;->b:Landroid/content/SharedPreferences;

    .line 5
    const-string v2, "uid"

    const-string v3, ""

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    iget-object p0, v1, Lcom/braze/storage/x;->b:Landroid/content/SharedPreferences;

    const-string v2, "cards"

    const-string v4, "[]"

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, v1, Lcom/braze/storage/x;->b:Landroid/content/SharedPreferences;

    const-string v4, "cards_timestamp"

    const-wide/16 v5, -0x1

    invoke-interface {p0, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v4, 0x1

    .line 9
    invoke-virtual/range {v1 .. v6}, Lcom/braze/storage/x;->a(Lorg/json/JSONArray;Ljava/lang/String;ZJ)Lcom/braze/events/FeedUpdatedEvent;

    move-result-object p0

    .line 10
    check-cast v0, Lcom/braze/events/d;

    const-class v1, Lcom/braze/events/FeedUpdatedEvent;

    invoke-virtual {v0, p0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 14
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestGeofenceRefresh$lambda$173()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to request geofence refresh."

    return-object v0
.end method

.method private static final requestGeofenceRefresh$lambda$175(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    if-nez p0, :cond_0

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda107;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda107;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 5
    iget-object p1, p1, Lcom/braze/managers/u0;->x:Lcom/braze/managers/BrazeGeofenceManager;

    .line 6
    invoke-virtual {p1, p0}, Lcom/braze/managers/BrazeGeofenceManager;->requestGeofenceRefresh(Lcom/braze/models/IBrazeLocation;)V

    .line 7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestGeofenceRefresh$lambda$175$lambda$174()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Cannot request Geofence refresh with null location."

    return-object v0
.end method

.method private static final requestGeofenceRefresh$lambda$176(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to request geofence refresh with rate limit ignore: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final requestGeofenceRefresh$lambda$177(Lcom/braze/Braze;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->x:Lcom/braze/managers/BrazeGeofenceManager;

    .line 3
    invoke-virtual {p0, p1}, Lcom/braze/managers/BrazeGeofenceManager;->requestGeofenceRefresh(Z)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestGeofences$lambda$158()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to request geofence refresh."

    return-object v0
.end method

.method private static final requestGeofences$lambda$161(DDLcom/braze/Braze;)Lkotlin/Unit;
    .locals 11

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/braze/support/ValidationUtils;->isValidLocation(DD)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda113;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/braze/Braze$$ExternalSyntheticLambda113;-><init>(DD)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p4

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda114;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/braze/Braze$$ExternalSyntheticLambda114;-><init>(DD)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p4

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    invoke-virtual {p4}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p4

    check-cast p4, Lcom/braze/managers/u0;

    .line 13
    iget-object p4, p4, Lcom/braze/managers/u0;->x:Lcom/braze/managers/BrazeGeofenceManager;

    .line 14
    new-instance v10, Lcom/braze/models/outgoing/BrazeLocation;

    const/16 v8, 0x1c

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v9}, Lcom/braze/models/outgoing/BrazeLocation;-><init>(DDLjava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p4, v10}, Lcom/braze/managers/BrazeGeofenceManager;->requestGeofenceRefresh(Lcom/braze/models/IBrazeLocation;)V

    .line 15
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestGeofences$lambda$161$lambda$159(DD)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Location provided is invalid. Not requesting refresh of Braze Geofences. Provided latitude - longitude: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    const-string p1, " - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final requestGeofences$lambda$161$lambda$160(DD)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manually requesting Geofence refresh of with provided latitude - longitude: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    const-string p1, " - "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final requestGeofencesInitialization$lambda$184()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to initialize geofences with the geofence manager."

    return-object v0
.end method

.method private static final requestGeofencesInitialization$lambda$185(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->x:Lcom/braze/managers/BrazeGeofenceManager;

    .line 3
    invoke-virtual {p0}, Lcom/braze/managers/BrazeGeofenceManager;->initializeGeofences()V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestImmediateDataFlush$lambda$105()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to request data flush."

    return-object v0
.end method

.method private static final requestImmediateDataFlush$lambda$107(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda124;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda124;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 3
    iget-object p0, p0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v0, Lcom/braze/models/outgoing/j;

    invoke-direct {v0}, Lcom/braze/models/outgoing/j;-><init>()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/braze/managers/m;->a(Lcom/braze/models/outgoing/j;)V

    .line 7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final requestImmediateDataFlush$lambda$107$lambda$106()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "requestImmediateDataFlush() called"

    return-object v0
.end method

.method private static final requestLocationInitialization$lambda$162()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Location permissions were granted. Requesting geofence and location initialization."

    return-object v0
.end method

.method private static final requestSingleLocationUpdate$lambda$186()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to request single location update"

    return-object v0
.end method

.method private static final requestSingleLocationUpdate$lambda$187(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->y:Lcom/braze/managers/k;

    .line 3
    invoke-virtual {p0}, Lcom/braze/managers/k;->g()Z

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final retryInAppMessage$lambda$196(Lcom/braze/events/InAppMessageEvent;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error retrying In-App Message from event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final retryInAppMessage$lambda$197(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->F:Lcom/braze/triggers/managers/f;

    .line 3
    invoke-virtual {p1}, Lcom/braze/events/InAppMessageEvent;->getTriggerEvent()Lcom/braze/triggers/events/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/braze/events/InAppMessageEvent;->getTriggerAction()Lcom/braze/triggers/actions/a;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/braze/triggers/managers/f;->a(Lcom/braze/triggers/events/b;Lcom/braze/triggers/actions/a;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x1

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move p3, v0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/braze/Braze;->run$android_sdk_base_release(Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p6, 0x4

    const/4 v0, 0x1

    if-eqz p7, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, p3

    :goto_0
    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    move v5, v0

    goto :goto_1

    :cond_1
    move v5, p4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p5

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/braze/Braze;->runForResult$android_sdk_base_release(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final schedulePushDelivery$lambda$202()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Error scheduling push delivery"

    return-object v0
.end method

.method private static final schedulePushDelivery$lambda$203(Lcom/braze/Braze;J)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 2
    iget-object p0, p0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/braze/managers/m;->a(J)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static final setCustomBrazeNotificationFactory(Lcom/braze/IBrazeNotificationFactory;)V
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->setCustomBrazeNotificationFactory(Lcom/braze/IBrazeNotificationFactory;)V

    return-void
.end method

.method public static final setEndpointProvider(Lcom/braze/IBrazeEndpointProvider;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->setEndpointProvider(Lcom/braze/IBrazeEndpointProvider;)V

    return-void
.end method

.method private static final setGoogleAdvertisingId$lambda$163(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set Google Advertising ID data on device. Google Advertising ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 2
    const-string v0, " and limit-ad-tracking: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final setGoogleAdvertisingId$lambda$166(Ljava/lang/String;Lcom/braze/Braze;Z)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda14;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda14;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->D:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda15;

    invoke-direct {v5, p0, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda15;-><init>(Ljava/lang/String;Z)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 9
    invoke-direct {p1}, Lcom/braze/Braze;->getDeviceDataProvider()Lcom/braze/managers/d0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/t;

    invoke-virtual {v0, p0}, Lcom/braze/managers/t;->b(Ljava/lang/String;)V

    .line 10
    invoke-direct {p1}, Lcom/braze/Braze;->getDeviceDataProvider()Lcom/braze/managers/d0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/t;

    invoke-virtual {p0, p2}, Lcom/braze/managers/t;->a(Z)V

    .line 11
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setGoogleAdvertisingId$lambda$166$lambda$164()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Google Advertising ID cannot be null or blank"

    return-object v0
.end method

.method private static final setGoogleAdvertisingId$lambda$166$lambda$165(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting Google Advertising ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " and limit-ad-tracking: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setOutboundNetworkRequestsOffline(Z)V
    .locals 1

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->setOutboundNetworkRequestsOffline(Z)V

    return-void
.end method

.method private static final setSdkAuthenticationSignature$lambda$167(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to set SDK authentication signature on device.\n"

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final setSdkAuthenticationSignature$lambda$170(Lcom/braze/Braze;Ljava/lang/String;)Lkotlin/Unit;
    .locals 9

    .line 1
    sget-object v8, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda118;

    invoke-direct {v5, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda118;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda119;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda119;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 7
    iget-object p0, p0, Lcom/braze/managers/u0;->t:Lcom/braze/storage/z;

    .line 8
    invoke-virtual {p0, p1}, Lcom/braze/storage/z;->b(Ljava/lang/String;)V

    .line 9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final setSdkAuthenticationSignature$lambda$170$lambda$168(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Got new sdk auth signature "

    invoke-static {v0, p0}, Lcom/braze/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final setSdkAuthenticationSignature$lambda$170$lambda$169()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "SDK authentication signature cannot be null or blank"

    return-object v0
.end method

.method private final setSyncPolicyOfflineStatus(Z)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda151;

    invoke-direct {v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda151;-><init>(Z)V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda153;

    invoke-direct {v4, p0, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda153;-><init>(Lcom/braze/Braze;Z)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method private static final setSyncPolicyOfflineStatus$lambda$209(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set sync policy offline to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final setSyncPolicyOfflineStatus$lambda$211(Lcom/braze/Braze;Z)Lkotlin/Unit;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 2
    iget-object v0, v0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 5
    iget-object v0, v0, Lcom/braze/managers/u0;->p:Lcom/braze/dispatch/f;

    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput-boolean p1, v0, Lcom/braze/dispatch/f;->l:Z

    .line 8
    invoke-virtual {v0}, Lcom/braze/dispatch/f;->b()V

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/braze/dispatch/f;->f()V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/braze/dispatch/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    .line 13
    iget-object v0, p0, Lcom/braze/Braze;->imageLoader:Lcom/braze/images/IBrazeImageLoader;

    if-eqz v0, :cond_1

    .line 14
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda110;

    invoke-direct {v6, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda110;-><init>(Z)V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 15
    invoke-virtual {p0}, Lcom/braze/Braze;->getImageLoader()Lcom/braze/images/IBrazeImageLoader;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/braze/images/IBrazeImageLoader;->setOffline(Z)V

    .line 17
    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static final setSyncPolicyOfflineStatus$lambda$211$lambda$210(Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting the image loader deny network downloads to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final setUserSpecificMemberVariablesAndStartDispatch(Lcom/braze/managers/u0;)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/braze/Braze;->setUdm$android_sdk_base_release(Lcom/braze/managers/h0;)V

    .line 2
    sget-object p1, Lcom/braze/coroutine/f;->a:Lcom/braze/coroutine/f;

    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 3
    iget-object p1, p1, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 4
    sput-object p1, Lcom/braze/coroutine/f;->b:Lcom/braze/events/d;

    .line 5
    new-instance p1, Lcom/braze/BrazeUser;

    .line 6
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    invoke-virtual {v0}, Lcom/braze/managers/u0;->a()Lcom/braze/storage/h0;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 8
    iget-object v2, v0, Lcom/braze/managers/u0;->w:Lcom/braze/managers/m;

    .line 9
    iget-object v0, p0, Lcom/braze/Braze;->offlineUserStorageProvider:Lcom/braze/configuration/e;

    const/4 v6, 0x0

    if-nez v0, :cond_0

    const-string v0, "offlineUserStorageProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v6

    :cond_0
    invoke-virtual {v0}, Lcom/braze/configuration/e;->a()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 11
    iget-object v4, v0, Lcom/braze/managers/u0;->y:Lcom/braze/managers/k;

    .line 12
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 13
    iget-object v5, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    move-object v0, p1

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/braze/BrazeUser;-><init>(Lcom/braze/storage/h0;Lcom/braze/managers/c0;Ljava/lang/String;Lcom/braze/managers/f0;Lcom/braze/storage/e0;)V

    iput-object p1, p0, Lcom/braze/Braze;->brazeUser:Lcom/braze/BrazeUser;

    .line 21
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 22
    iget-object p1, p1, Lcom/braze/managers/u0;->o:Lcom/braze/events/a;

    .line 23
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 24
    iget-object v0, v0, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 25
    invoke-virtual {p1, v0}, Lcom/braze/events/a;->a(Lcom/braze/events/d;)V

    .line 26
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 27
    iget-object p1, p1, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 28
    invoke-virtual {p1}, Lcom/braze/events/d;->a()V

    .line 29
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 30
    iget-object p1, p1, Lcom/braze/managers/u0;->r:Lcom/braze/managers/z;

    .line 31
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 32
    iget-object v0, v0, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 33
    invoke-virtual {p1, v0}, Lcom/braze/managers/z;->a(Lcom/braze/events/d;)V

    .line 34
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 35
    iget-object p1, p1, Lcom/braze/managers/u0;->E:Lcom/braze/requests/framework/g;

    .line 36
    invoke-virtual {p1}, Lcom/braze/requests/framework/g;->g()V

    .line 37
    iget-object p1, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    new-instance v0, Lcom/braze/events/BrazeUserChangeEvent;

    iget-object v1, p0, Lcom/braze/Braze;->brazeUser:Lcom/braze/BrazeUser;

    const-string v2, "brazeUser"

    if-nez v1, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v6

    :cond_1
    invoke-virtual {v1}, Lcom/braze/BrazeUser;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braze/events/BrazeUserChangeEvent;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/braze/events/d;

    const-class v1, Lcom/braze/events/BrazeUserChangeEvent;

    invoke-virtual {p1, v0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p1

    check-cast p1, Lcom/braze/managers/u0;

    .line 41
    iget-object p1, p1, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 42
    new-instance v0, Lcom/braze/events/BrazeUserChangeEvent;

    iget-object v1, p0, Lcom/braze/Braze;->brazeUser:Lcom/braze/BrazeUser;

    if-nez v1, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v6, v1

    :goto_0
    invoke-virtual {v6}, Lcom/braze/BrazeUser;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braze/events/BrazeUserChangeEvent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/braze/events/BrazeUserChangeEvent;

    invoke-virtual {p1, v0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method private static final subscribeToBannersErrors$lambda$119()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber for Banner errors."

    return-object v0
.end method

.method private static final subscribeToBannersUpdates$lambda$115()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to send cached banners upon subscribeToBannersUpdates."

    return-object v0
.end method

.method private static final subscribeToBannersUpdates$lambda$117(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda72;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda72;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 3
    iget-object v0, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 4
    invoke-virtual {v0}, Lcom/braze/storage/e0;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 6
    iget-object p0, p0, Lcom/braze/managers/u0;->A:Lcom/braze/managers/h;

    .line 7
    iget-object v0, p0, Lcom/braze/managers/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lcom/braze/events/BannersUpdatedEvent;

    .line 10
    iget-object v1, p0, Lcom/braze/managers/h;->e:Ljava/util/List;

    .line 571
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 572
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 573
    check-cast v3, Lcom/braze/models/Banner;

    .line 574
    invoke-virtual {v3}, Lcom/braze/models/Banner;->deepcopy$android_sdk_base_release()Lcom/braze/models/Banner;

    move-result-object v3

    .line 1137
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1138
    :cond_0
    invoke-direct {v0, v2}, Lcom/braze/events/BannersUpdatedEvent;-><init>(Ljava/util/List;)V

    .line 1139
    iget-object p0, p0, Lcom/braze/managers/h;->b:Lcom/braze/events/e;

    check-cast p0, Lcom/braze/events/d;

    const-class v1, Lcom/braze/events/BannersUpdatedEvent;

    invoke-virtual {p0, v0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 1140
    :cond_1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 1141
    iget-object p0, p0, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 1142
    new-instance v0, Lcom/braze/events/BannersUpdatedEvent;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/braze/events/BannersUpdatedEvent;-><init>(Ljava/util/List;)V

    .line 1143
    const-class v1, Lcom/braze/events/BannersUpdatedEvent;

    invoke-virtual {p0, v0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1148
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final subscribeToBannersUpdates$lambda$117$lambda$116()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Sending cached update upon banners subscription"

    return-object v0
.end method

.method private static final subscribeToBannersUpdates$lambda$118()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber for Banner updates."

    return-object v0
.end method

.method private static final subscribeToContentCardsUpdates$lambda$110()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber for Content Cards updates."

    return-object v0
.end method

.method private static final subscribeToFeatureFlagsUpdates$lambda$111()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to send cached feature flags upon subscribeToFeatureFlagsUpdates."

    return-object v0
.end method

.method private static final subscribeToFeatureFlagsUpdates$lambda$113(Lcom/braze/Braze;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda194;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda194;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object v0

    check-cast v0, Lcom/braze/managers/u0;

    .line 3
    iget-object v0, v0, Lcom/braze/managers/u0;->m:Lcom/braze/storage/e0;

    .line 4
    invoke-virtual {v0}, Lcom/braze/storage/e0;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 6
    iget-object p0, p0, Lcom/braze/managers/u0;->z:Lcom/braze/managers/a0;

    .line 7
    iget-object v0, p0, Lcom/braze/managers/a0;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    .line 10
    iget-object v1, p0, Lcom/braze/managers/a0;->e:Ljava/util/List;

    .line 276
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 278
    check-cast v3, Lcom/braze/models/FeatureFlag;

    .line 279
    invoke-virtual {v3}, Lcom/braze/models/FeatureFlag;->deepcopy$android_sdk_base_release()Lcom/braze/models/FeatureFlag;

    move-result-object v3

    .line 547
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 548
    :cond_0
    invoke-direct {v0, v2}, Lcom/braze/events/FeatureFlagsUpdatedEvent;-><init>(Ljava/util/List;)V

    .line 549
    iget-object p0, p0, Lcom/braze/managers/a0;->b:Lcom/braze/events/e;

    check-cast p0, Lcom/braze/events/d;

    const-class v1, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    invoke-virtual {p0, v0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    goto :goto_1

    .line 550
    :cond_1
    invoke-virtual {p0}, Lcom/braze/Braze;->getUdm$android_sdk_base_release()Lcom/braze/managers/h0;

    move-result-object p0

    check-cast p0, Lcom/braze/managers/u0;

    .line 551
    iget-object p0, p0, Lcom/braze/managers/u0;->l:Lcom/braze/events/d;

    .line 552
    new-instance v0, Lcom/braze/events/internal/j;

    invoke-direct {v0}, Lcom/braze/events/internal/j;-><init>()V

    .line 553
    const-class v1, Lcom/braze/events/internal/j;

    invoke-virtual {p0, v0, v1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 558
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final subscribeToFeatureFlagsUpdates$lambda$113$lambda$112()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Sending cached update upon feature flag subscription"

    return-object v0
.end method

.method private static final subscribeToFeatureFlagsUpdates$lambda$114()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber for Feature Flags updates."

    return-object v0
.end method

.method private static final subscribeToFeedUpdates$lambda$120()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber for feed updates."

    return-object v0
.end method

.method private static final subscribeToNetworkFailures$lambda$122()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber for network failures."

    return-object v0
.end method

.method private static final subscribeToNewInAppMessages$lambda$108()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber to new in-app messages."

    return-object v0
.end method

.method private static final subscribeToNoMatchingTriggerForEvent$lambda$109()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber to no matching trigger events."

    return-object v0
.end method

.method private static final subscribeToPushNotificationEvents$lambda$124()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber for push notification updates."

    return-object v0
.end method

.method private static final subscribeToSdkAuthenticationFailures$lambda$123()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber for SDK authentication failures."

    return-object v0
.end method

.method private static final subscribeToSessionUpdates$lambda$121()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to add subscriber for session updates."

    return-object v0
.end method

.method private static final validateAndStorePushId$lambda$208()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to validate and store push identifier"

    return-object v0
.end method

.method private final verifyProperSdkSetup()V
    .locals 13

    .line 1
    sget-object v0, Lcom/braze/Braze;->NECESSARY_BRAZE_SDK_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2
    iget-object v4, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/braze/support/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v10, Lcom/braze/Braze$$ExternalSyntheticLambda162;

    invoke-direct {v10, v2}, Lcom/braze/Braze$$ExternalSyntheticLambda162;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p0

    invoke-static/range {v5 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    move v1, v3

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfigurationProvider;->getBrazeApiKey()Lcom/braze/models/outgoing/b;

    move-result-object v0

    .line 10
    iget-object v0, v0, Lcom/braze/models/outgoing/b;->a:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/Braze$$ExternalSyntheticLambda164;

    invoke-direct {v9}, Lcom/braze/Braze$$ExternalSyntheticLambda164;-><init>()V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    move v1, v3

    :cond_2
    if-nez v1, :cond_3

    .line 16
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/Braze$$ExternalSyntheticLambda165;

    invoke-direct {v7}, Lcom/braze/Braze$$ExternalSyntheticLambda165;-><init>()V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static final verifyProperSdkSetup$lambda$214(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "The Braze SDK requires the permission "

    const-string v1, ". Check your AndroidManifest."

    invoke-static {v0, p0, v1}, Lcom/braze/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final verifyProperSdkSetup$lambda$215()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The Braze SDK requires a non-empty API key. Check your braze.xml or BrazeConfig."

    return-object v0
.end method

.method private static final verifyProperSdkSetup$lambda$216()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "The Braze SDK is not integrated correctly. Please visit https://www.braze.com/docs/developer_guide/platform_integration_guides/android/initial_sdk_setup/android_sdk_integration/"

    return-object v0
.end method

.method private static final waitForUserDependencyThread$lambda$219()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    return-object v0
.end method

.method private static final waitForUserDependencyThread$lambda$220()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Caught exception while waiting for previous tasks in serial work queue to finish."

    return-object v0
.end method

.method public static final wipeData(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/braze/Braze;->Companion:Lcom/braze/Braze$Companion;

    invoke-virtual {v0, p0}, Lcom/braze/Braze$Companion;->wipeData(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic addSerializedCardJsonToStorage$android_sdk_base_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "serializedCardJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda190;

    invoke-direct {v2, p2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda190;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda191;

    invoke-direct {v5, p1, p0, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda191;-><init>(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public addSingleSynchronousSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/braze/events/IEventSubscriber<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, p2, p1}, Lcom/braze/events/d;->c(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda192;

    invoke-direct {v5, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda192;-><init>(Ljava/lang/Class;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final synthetic applyPendingRuntimeConfiguration$android_sdk_base_release()V
    .locals 13

    .line 1
    sget-object v0, Lcom/braze/Braze;->brazeClassLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2
    :try_start_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda159;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda159;-><init>()V

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/braze/configuration/RuntimeAppConfigurationProvider;

    iget-object v2, p0, Lcom/braze/Braze;->applicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;-><init>(Landroid/content/Context;)V

    .line 4
    sget-object v2, Lcom/braze/Braze;->pendingConfigurations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/braze/configuration/BrazeConfig;

    .line 5
    sget-object v4, Lcom/braze/Braze;->clearConfigSentinel:Lcom/braze/configuration/BrazeConfig;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    sget-object v5, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v7, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v10, Lcom/braze/Braze$$ExternalSyntheticLambda160;

    invoke-direct {v10}, Lcom/braze/Braze$$ExternalSyntheticLambda160;-><init>()V

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p0

    invoke-static/range {v5 .. v12}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v1}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->clearAllConfigurationValues()V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v4, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v6, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v9, Lcom/braze/Braze$$ExternalSyntheticLambda161;

    invoke-direct {v9, v3}, Lcom/braze/Braze$$ExternalSyntheticLambda161;-><init>(Lcom/braze/configuration/BrazeConfig;)V

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p0

    invoke-static/range {v4 .. v11}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 10
    invoke-virtual {v1, v3}, Lcom/braze/configuration/RuntimeAppConfigurationProvider;->setConfiguration(Lcom/braze/configuration/BrazeConfig;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object v1, Lcom/braze/Braze;->pendingConfigurations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 14
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v1

    .line 16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final areCachedContentCardsStale()Z
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/braze/Braze;->getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3c

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/braze/events/ContentCardsUpdatedEvent;->isTimestampOlderThan(J)Z

    move-result v0

    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda136;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda136;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public changeUser(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/braze/Braze;->changeUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda122;

    invoke-direct {v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda122;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda123;

    invoke-direct {v4, p1, p0, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda123;-><init>(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public closeSession(Landroid/app/Activity;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda154;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda154;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda155;

    invoke-direct {v4, p1, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda155;-><init>(Landroid/app/Activity;Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public deserializeContentCard(Ljava/lang/String;)Lcom/braze/models/cards/Card;
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda134;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda134;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-object v0

    .line 5
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/braze/Braze;->deserializeContentCard(Lorg/json/JSONObject;)Lcom/braze/models/cards/Card;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/Braze$$ExternalSyntheticLambda135;

    invoke-direct {v7, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda135;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v5, v1

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    invoke-direct {p0, v1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method public deserializeContentCard(Lorg/json/JSONObject;)Lcom/braze/models/cards/Card;
    .locals 8

    .line 9
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda137;

    invoke-direct {v2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda137;-><init>(Lorg/json/JSONObject;)V

    new-instance v5, Lcom/braze/f;

    const/4 v0, 0x0

    invoke-direct {v5, p0, p1, v0}, Lcom/braze/f;-><init>(Lcom/braze/Braze;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/Braze;->runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/braze/models/cards/Card;

    return-object p1
.end method

.method public deserializeInAppMessageString(Ljava/lang/String;)Lcom/braze/models/inappmessage/IInAppMessage;
    .locals 8

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda112;

    invoke-direct {v2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda112;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/braze/g;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p0, v0}, Lcom/braze/g;-><init>(Ljava/lang/String;Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/Braze;->runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/braze/models/inappmessage/IInAppMessage;

    return-object p1
.end method

.method public getAllFeatureFlags()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/FeatureFlag;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda88;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda88;-><init>()V

    new-instance v5, Lcom/braze/i;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/braze/i;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/Braze;->runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getBanner(Ljava/lang/String;)Lcom/braze/models/Banner;
    .locals 9

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Lcom/braze/Braze$$ExternalSyntheticLambda109;

    invoke-direct {v3, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda109;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/braze/k;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/braze/k;-><init>(Lcom/braze/Braze;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/Braze;->runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/braze/models/Banner;

    return-object p1
.end method

.method public getCachedContentCards()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/braze/models/cards/Card;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/braze/Braze;->getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/braze/events/ContentCardsUpdatedEvent;->getAllCards()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda87;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda87;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "configurationProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConfigurationProviderSafe$android_sdk_base_release(Landroid/content/Context;)Lcom/braze/configuration/BrazeConfigurationProvider;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/braze/Braze;->getConfigurationProvider$android_sdk_base_release()Lcom/braze/configuration/BrazeConfigurationProvider;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda22;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda22;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    new-instance v0, Lcom/braze/configuration/BrazeConfigurationProvider;

    invoke-direct {v0, p1}, Lcom/braze/configuration/BrazeConfigurationProvider;-><init>(Landroid/content/Context;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getContentCardCount()I
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/braze/Braze;->getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/braze/events/ContentCardsUpdatedEvent;->getCardCount()I

    move-result v0

    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda168;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda168;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getContentCardUnviewedCount()I
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/braze/Braze;->getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/braze/events/ContentCardsUpdatedEvent;->getUnviewedCardCount()I

    move-result v0

    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda92;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda92;-><init>()V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const/4 v0, -0x1

    return v0
.end method

.method public getContentCardsLastUpdatedInSecondsFromEpoch()J
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/braze/Braze;->getCachedContentCardsUpdatedEvent()Lcom/braze/events/ContentCardsUpdatedEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/braze/events/ContentCardsUpdatedEvent;->getTimestampSeconds()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_0
    sget-object v2, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v4, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v7, Lcom/braze/Braze$$ExternalSyntheticLambda43;

    invoke-direct {v7}, Lcom/braze/Braze$$ExternalSyntheticLambda43;-><init>()V

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v2 .. v9}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentUser()Lcom/braze/BrazeUser;
    .locals 6

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda163;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda163;-><init>()V

    .line 2
    new-instance v5, Lcom/braze/e;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/braze/e;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/braze/Braze;->runForResult$android_sdk_base_release(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/braze/BrazeUser;

    return-object v0
.end method

.method public getCurrentUser(Lcom/braze/events/IValueCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IValueCallback<",
            "Lcom/braze/BrazeUser;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completionCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    :try_start_0
    sget-object v1, Lcom/braze/coroutine/f;->a:Lcom/braze/coroutine/f;

    new-instance v4, Lcom/braze/m;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/braze/m;-><init>(Lcom/braze/events/IValueCallback;Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda108;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda108;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 14
    invoke-interface {p1}, Lcom/braze/events/IValueCallback;->onError()V

    .line 15
    invoke-direct {p0, v0}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda133;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda133;-><init>()V

    .line 2
    new-instance v5, Lcom/braze/h;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/braze/h;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/braze/Braze;->runForResult$android_sdk_base_release(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdAsync(Lcom/braze/events/IValueCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completionCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v1, Lcom/braze/coroutine/f;->a:Lcom/braze/coroutine/f;

    new-instance v4, Lcom/braze/o;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/braze/o;-><init>(Lcom/braze/events/IValueCallback;Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda115;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda115;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 12
    invoke-interface {p1}, Lcom/braze/events/IValueCallback;->onError()V

    .line 13
    invoke-direct {p0, v0}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final getDeviceIdProvider$android_sdk_base_release()Lcom/braze/managers/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->deviceIdProvider:Lcom/braze/managers/e0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "deviceIdProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExternalIEventMessenger$android_sdk_base_release()Lcom/braze/events/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    return-object v0
.end method

.method public getFeatureFlag(Ljava/lang/String;)Lcom/braze/models/FeatureFlag;
    .locals 9

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v3, Lcom/braze/Braze$$ExternalSyntheticLambda41;

    invoke-direct {v3, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda41;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/braze/p;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/braze/p;-><init>(Lcom/braze/Braze;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/Braze;->runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/braze/models/FeatureFlag;

    return-object p1
.end method

.method public getImageLoader()Lcom/braze/images/IBrazeImageLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->imageLoader:Lcom/braze/images/IBrazeImageLoader;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "imageLoader"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPushDeliveryManager$android_sdk_base_release()Lcom/braze/managers/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->pushDeliveryManager:Lcom/braze/managers/i0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "pushDeliveryManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegisteredPushToken()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda91;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda91;-><init>()V

    new-instance v5, Lcom/braze/s;

    const/4 v0, 0x0

    invoke-direct {v5, p0, v0}, Lcom/braze/s;-><init>(Lcom/braze/Braze;Lkotlin/coroutines/Continuation;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/Braze;->runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getRegistrationDataProvider$android_sdk_base_release()Lcom/braze/managers/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->registrationDataProvider:Lcom/braze/managers/g0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "registrationDataProvider"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUdm$android_sdk_base_release()Lcom/braze/managers/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->udm:Lcom/braze/managers/h0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "udm"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic handleInAppMessageTestPush$android_sdk_base_release(Landroid/content/Intent;)V
    .locals 8

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda145;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda145;-><init>()V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda146;

    invoke-direct {v5, p1, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda146;-><init>(Landroid/content/Intent;Lcom/braze/Braze;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic handleInternalBannerRefresh$android_sdk_base_release()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda75;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda75;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda76;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda76;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final isApiKeyPresent$android_sdk_base_release()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->isApiKeyPresent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public logBannerClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda70;

    invoke-direct {v2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda70;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda71;

    invoke-direct {v5, p0, p1, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda71;-><init>(Lcom/braze/Braze;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logBannerImpression(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "placementId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v3, Lcom/braze/Braze$$ExternalSyntheticLambda97;

    invoke-direct {v3, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda97;-><init>(Ljava/lang/String;)V

    new-instance v6, Lcom/braze/q;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/braze/q;-><init>(Lcom/braze/Braze;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/Braze;->runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public logCustomEvent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/braze/Braze;->logCustomEvent(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public logCustomEvent(Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;)V
    .locals 8

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/braze/models/outgoing/BrazeProperties;->clone()Lcom/braze/models/outgoing/BrazeProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda174;

    invoke-direct {v2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda174;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda185;

    invoke-direct {v5, p0, p1, v0, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda185;-><init>(Lcom/braze/Braze;Ljava/lang/String;Lcom/braze/models/outgoing/BrazeProperties;Lcom/braze/models/outgoing/BrazeProperties;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logFeatureFlagImpression(Ljava/lang/String;)V
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda206;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda206;-><init>()V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda1;-><init>(Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logFeedCardClick(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        message = "Please call {@link Card#logClick()} instead to log a click."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Card.logClick()"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda65;

    invoke-direct {v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda65;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda67;

    invoke-direct {v4, p1, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda67;-><init>(Ljava/lang/String;Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logFeedCardImpression(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lkotlin/Deprecated;
        message = "Please call {@link Card#logImpression()} instead to log an impression."
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "Card.logImpression"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda156;

    invoke-direct {v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda156;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda157;

    invoke-direct {v4, p1, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda157;-><init>(Ljava/lang/String;Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logFeedDisplayed()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda148;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda148;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda149;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda149;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic logLocationRecordedEventFromLocationUpdate$android_sdk_base_release(Lcom/braze/models/IBrazeLocation;)V
    .locals 8

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda120;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda120;-><init>()V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda121;

    invoke-direct {v5, p1, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda121;-><init>(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/braze/Braze;->logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V

    return-void
.end method

.method public logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/braze/Braze;->logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V
    .locals 10

    if-eqz p5, :cond_0

    .line 4
    invoke-virtual {p5}, Lcom/braze/models/outgoing/BrazeProperties;->clone()Lcom/braze/models/outgoing/BrazeProperties;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v7, v0

    .line 5
    new-instance v8, Lcom/braze/Braze$$ExternalSyntheticLambda98;

    invoke-direct {v8, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda98;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/braze/Braze$$ExternalSyntheticLambda100;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/braze/Braze$$ExternalSyntheticLambda100;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/Braze;Lcom/braze/models/outgoing/BrazeProperties;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v4, v9

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Lcom/braze/models/outgoing/BrazeProperties;)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/braze/Braze;->logPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;ILcom/braze/models/outgoing/BrazeProperties;)V

    return-void
.end method

.method public final synthetic logPushDelivery$android_sdk_base_release(Ljava/lang/String;J)V
    .locals 8

    const-string v0, "campaignId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda207;

    invoke-direct {v2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda207;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/braze/Braze$$ExternalSyntheticLambda11;-><init>(Lcom/braze/Braze;Ljava/lang/String;J)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic logPushMaxCampaign$android_sdk_base_release(Ljava/lang/String;)V
    .locals 8

    const-string v0, "campaign"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda78;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda78;-><init>()V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda79;

    invoke-direct {v5, p0, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda79;-><init>(Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPushNotificationActionClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda63;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda63;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda64;

    invoke-direct {v4, p1, p0, p2, p3}, Lcom/braze/Braze$$ExternalSyntheticLambda64;-><init>(Ljava/lang/String;Lcom/braze/Braze;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPushNotificationOpened(Landroid/content/Intent;)V
    .locals 7

    .line 2
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda184;

    invoke-direct {v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda184;-><init>(Landroid/content/Intent;)V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda186;

    invoke-direct {v4, p1, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda186;-><init>(Landroid/content/Intent;Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPushNotificationOpened(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda127;

    invoke-direct {v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda127;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda128;

    invoke-direct {v4, p1, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda128;-><init>(Ljava/lang/String;Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public logPushStoryPageClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda180;

    invoke-direct {v1, p2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda180;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda181;

    invoke-direct {v4, p1, p2, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda181;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public openSession(Landroid/app/Activity;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda166;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda166;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda167;

    invoke-direct {v4, p1, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda167;-><init>(Landroid/app/Activity;Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic performPushDeliveryFlush$android_sdk_base_release()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda89;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda89;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda90;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda90;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic publishBrazePushAction$android_sdk_base_release(Lcom/braze/enums/BrazePushEventType;Lcom/braze/models/push/BrazeNotificationPayload;)V
    .locals 2

    const-string v0, "pushActionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payload"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    new-instance v1, Lcom/braze/events/BrazePushEvent;

    invoke-direct {v1, p1, p2}, Lcom/braze/events/BrazePushEvent;-><init>(Lcom/braze/enums/BrazePushEventType;Lcom/braze/models/push/BrazeNotificationPayload;)V

    check-cast v0, Lcom/braze/events/d;

    const-class p1, Lcom/braze/events/BrazePushEvent;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method

.method public final synthetic recordGeofenceTransition$android_sdk_base_release(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda116;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda116;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda117;

    invoke-direct {v4, p1, p2, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda117;-><init>(Ljava/lang/String;Lcom/braze/enums/GeofenceTransitionType;Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final reenqueueInAppMessage$android_sdk_base_release(Lcom/braze/events/InAppMessageEvent;)V
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda48;

    invoke-direct {v2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda48;-><init>(Lcom/braze/events/InAppMessageEvent;)V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda49;

    invoke-direct {v5, p0, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda49;-><init>(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public refreshFeatureFlags()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda93;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda93;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda94;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda94;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public removeSingleSubscription(Lcom/braze/events/IEventSubscriber;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/braze/events/IEventSubscriber<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "eventClass"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, p2, p1}, Lcom/braze/events/d;->a(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    move-result v0

    .line 2
    sget-object v9, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v10, Lcom/braze/support/BrazeLogger$Priority;->V:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda187;

    invoke-direct {v6, p2, p1, v0}, Lcom/braze/Braze$$ExternalSyntheticLambda187;-><init>(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;Z)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, v10

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, p2, p1}, Lcom/braze/events/d;->b(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)Z

    move-result v0

    .line 4
    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda188;

    invoke-direct {v6, p2, p1, v0}, Lcom/braze/Braze$$ExternalSyntheticLambda188;-><init>(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;Z)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, v10

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda189;

    invoke-direct {v5, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda189;-><init>(Ljava/lang/Class;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public requestBannersRefresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/braze/Braze;->requestBannersRefresh(Ljava/util/List;Lcom/braze/events/IValueCallback;)V

    return-void
.end method

.method public requestBannersRefresh(Ljava/util/List;Lcom/braze/events/IValueCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/braze/events/IValueCallback<",
            "Lcom/braze/events/BannersUpdatedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda143;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda143;-><init>()V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda144;

    invoke-direct {v5, p1, p0, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda144;-><init>(Ljava/util/List;Lcom/braze/Braze;Lcom/braze/events/IValueCallback;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestContentCardsRefresh()V
    .locals 7

    .line 4
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda58;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda58;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda59;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda59;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestContentCardsRefresh(Z)V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "Please call {@link IBraze#requestContentCardsRefresh()} or {@link IBraze#requestContentCardsRefreshFromCache()} instead to refresh Content Cards"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "IBraze.requestContentCardsRefresh"
            imports = {}
        .end subannotation
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/braze/Braze;->requestContentCardsRefreshFromCache()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/braze/Braze;->requestContentCardsRefresh()V

    :goto_0
    return-void
.end method

.method public requestContentCardsRefreshFromCache()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda73;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda73;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda74;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda74;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestFeedRefresh()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda195;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda195;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda197;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda197;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestFeedRefreshFromCache()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda129;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda129;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda131;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda131;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic requestGeofenceRefresh$android_sdk_base_release(Lcom/braze/models/IBrazeLocation;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda12;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda13;

    invoke-direct {v4, p1, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda13;-><init>(Lcom/braze/models/IBrazeLocation;Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic requestGeofenceRefresh$android_sdk_base_release(Z)V
    .locals 7

    .line 2
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda2;-><init>(Z)V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda3;-><init>(Lcom/braze/Braze;Z)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestGeofences(DD)V
    .locals 9

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda8;-><init>()V

    new-instance v8, Lcom/braze/Braze$$ExternalSyntheticLambda9;

    move-object v2, v8

    move-wide v3, p1

    move-wide v5, p3

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/braze/Braze$$ExternalSyntheticLambda9;-><init>(DDLcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, v8

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic requestGeofencesInitialization$android_sdk_base_release()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda169;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda169;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda170;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda170;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestImmediateDataFlush()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda82;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda82;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda83;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda83;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public requestLocationInitialization()V
    .locals 8

    .line 1
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda158;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda158;-><init>()V

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/braze/Braze;->requestGeofencesInitialization$android_sdk_base_release()V

    .line 3
    invoke-virtual {p0}, Lcom/braze/Braze;->requestSingleLocationUpdate$android_sdk_base_release()V

    return-void
.end method

.method public final synthetic requestSingleLocationUpdate$android_sdk_base_release()V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda85;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda85;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda86;

    invoke-direct {v4, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda86;-><init>(Lcom/braze/Braze;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic retryInAppMessage$android_sdk_base_release(Lcom/braze/events/InAppMessageEvent;)V
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda105;

    invoke-direct {v2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda105;-><init>(Lcom/braze/events/InAppMessageEvent;)V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda106;

    invoke-direct {v5, p0, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda106;-><init>(Lcom/braze/Braze;Lcom/braze/events/InAppMessageEvent;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final synthetic run$android_sdk_base_release(Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;)V
    .locals 9

    const-string v0, "errorLog"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v1, Lcom/braze/coroutine/f;->a:Lcom/braze/coroutine/f;

    new-instance v0, Lcom/braze/u;

    const/4 v8, 0x0

    move-object v2, v0

    move v3, p2

    move v4, p3

    move-object v5, p0

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/braze/u;-><init>(ZZLcom/braze/Braze;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 16
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 17
    invoke-direct {p0, p2}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final runForResult$android_sdk_base_release(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/CoroutineScope;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "errorLog"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcom/braze/x;

    const/4 v8, 0x0

    move-object v1, v0

    move v2, p3

    move-object v3, p1

    move v4, p4

    move-object v5, p0

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/braze/x;-><init>(ZLjava/lang/Object;ZLcom/braze/Braze;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 p3, 0x1

    const/4 p4, 0x0

    invoke-static {p4, v0, p3, p4}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p3

    .line 27
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 28
    invoke-direct {p0, p3}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public final synthetic schedulePushDelivery$android_sdk_base_release(J)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda95;

    invoke-direct {v1}, Lcom/braze/Braze$$ExternalSyntheticLambda95;-><init>()V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda96;

    invoke-direct {v4, p0, p1, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda96;-><init>(Lcom/braze/Braze;J)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final setApiKeyPresent$android_sdk_base_release(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->isApiKeyPresent:Ljava/lang/Boolean;

    return-void
.end method

.method public final setConfigurationProvider$android_sdk_base_release(Lcom/braze/configuration/BrazeConfigurationProvider;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->configurationProvider:Lcom/braze/configuration/BrazeConfigurationProvider;

    return-void
.end method

.method public final setDeviceIdProvider$android_sdk_base_release(Lcom/braze/managers/e0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->deviceIdProvider:Lcom/braze/managers/e0;

    return-void
.end method

.method public final setExternalIEventMessenger$android_sdk_base_release(Lcom/braze/events/e;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    return-void
.end method

.method public setGoogleAdvertisingId(Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "googleAdvertisingId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda138;

    invoke-direct {v2, p1, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda138;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda139;

    invoke-direct {v5, p1, p0, p2}, Lcom/braze/Braze$$ExternalSyntheticLambda139;-><init>(Ljava/lang/String;Lcom/braze/Braze;Z)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public setImageLoader(Lcom/braze/images/IBrazeImageLoader;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->imageLoader:Lcom/braze/images/IBrazeImageLoader;

    return-void
.end method

.method public final setPushDeliveryManager$android_sdk_base_release(Lcom/braze/managers/i0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->pushDeliveryManager:Lcom/braze/managers/i0;

    return-void
.end method

.method public setRegisteredPushToken(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v1, Lcom/braze/Braze$$ExternalSyntheticLambda33;

    invoke-direct {v1, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda33;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/braze/Braze$$ExternalSyntheticLambda44;

    invoke-direct {v4, p0, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda44;-><init>(Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final setRegistrationDataProvider$android_sdk_base_release(Lcom/braze/managers/g0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->registrationDataProvider:Lcom/braze/managers/g0;

    return-void
.end method

.method public setSdkAuthenticationSignature(Ljava/lang/String;)V
    .locals 8

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda182;

    invoke-direct {v2, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda182;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda183;

    invoke-direct {v5, p0, p1}, Lcom/braze/Braze$$ExternalSyntheticLambda183;-><init>(Lcom/braze/Braze;Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    return-void
.end method

.method public final setUdm$android_sdk_base_release(Lcom/braze/managers/h0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/braze/Braze;->udm:Lcom/braze/managers/h0;

    return-void
.end method

.method public subscribeToBannersErrors(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/internal/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/internal/b;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda126;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda126;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToBannersUpdates(Lcom/braze/events/IEventSubscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BannersUpdatedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/BannersUpdatedEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    .line 4
    new-instance v3, Lcom/braze/Braze$$ExternalSyntheticLambda45;

    invoke-direct {v3}, Lcom/braze/Braze$$ExternalSyntheticLambda45;-><init>()V

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda46;

    invoke-direct {v6, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda46;-><init>(Lcom/braze/Braze;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda47;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda47;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToContentCardsUpdates(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/ContentCardsUpdatedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/ContentCardsUpdatedEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda142;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda142;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToFeatureFlagsUpdates(Lcom/braze/events/IEventSubscriber;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/FeatureFlagsUpdatedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/FeatureFlagsUpdatedEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V

    .line 4
    new-instance v3, Lcom/braze/Braze$$ExternalSyntheticLambda101;

    invoke-direct {v3}, Lcom/braze/Braze$$ExternalSyntheticLambda101;-><init>()V

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda102;

    invoke-direct {v6, p0}, Lcom/braze/Braze$$ExternalSyntheticLambda102;-><init>(Lcom/braze/Braze;)V

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Lcom/braze/Braze;->run$android_sdk_base_release$default(Lcom/braze/Braze;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda103;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda103;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToFeedUpdates(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/FeedUpdatedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/FeedUpdatedEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda10;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToNetworkFailures(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BrazeNetworkFailureEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/BrazeNetworkFailureEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda99;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda99;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToNewInAppMessages(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/InAppMessageEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/InAppMessageEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda196;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda196;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToNoMatchingTriggerForEvent(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/NoMatchingTriggerEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/NoMatchingTriggerEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda147;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda147;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToPushNotificationEvents(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BrazePushEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/BrazePushEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda68;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda68;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToSdkAuthenticationFailures(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/BrazeSdkAuthenticationErrorEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda132;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda132;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public subscribeToSessionUpdates(Lcom/braze/events/IEventSubscriber;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/braze/events/IEventSubscriber<",
            "Lcom/braze/events/SessionStateChangedEvent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/braze/Braze;->externalIEventMessenger:Lcom/braze/events/e;

    const-class v1, Lcom/braze/events/SessionStateChangedEvent;

    check-cast v0, Lcom/braze/events/d;

    invoke-virtual {v0, v1, p1}, Lcom/braze/events/d;->d(Ljava/lang/Class;Lcom/braze/events/IEventSubscriber;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    sget-object v0, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v2, Lcom/braze/support/BrazeLogger$Priority;->W:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v5, Lcom/braze/Braze$$ExternalSyntheticLambda42;

    invoke-direct {v5}, Lcom/braze/Braze$$ExternalSyntheticLambda42;-><init>()V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v0 .. v7}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/braze/Braze;->publishError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final synthetic validateAndStorePushId$android_sdk_base_release(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "pushId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v3, Lcom/braze/Braze$$ExternalSyntheticLambda203;

    invoke-direct {v3}, Lcom/braze/Braze$$ExternalSyntheticLambda203;-><init>()V

    new-instance v6, Lcom/braze/y;

    const/4 v0, 0x0

    invoke-direct {v6, p0, p1, v0}, Lcom/braze/y;-><init>(Lcom/braze/Braze;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/Braze;->runForResult$android_sdk_base_release$default(Lcom/braze/Braze;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final synthetic waitForUserDependencyThread$android_sdk_base_release()V
    .locals 9

    .line 1
    :try_start_0
    new-instance v2, Lcom/braze/Braze$$ExternalSyntheticLambda198;

    invoke-direct {v2}, Lcom/braze/Braze$$ExternalSyntheticLambda198;-><init>()V

    .line 2
    new-instance v5, Lcom/braze/z;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/braze/z;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/braze/Braze;->runForResult$android_sdk_base_release(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;ZZLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v4, v0

    .line 11
    sget-object v1, Lcom/braze/support/BrazeLogger;->INSTANCE:Lcom/braze/support/BrazeLogger;

    sget-object v3, Lcom/braze/support/BrazeLogger$Priority;->E:Lcom/braze/support/BrazeLogger$Priority;

    new-instance v6, Lcom/braze/Braze$$ExternalSyntheticLambda199;

    invoke-direct {v6}, Lcom/braze/Braze$$ExternalSyntheticLambda199;-><init>()V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v1 .. v8}, Lcom/braze/support/BrazeLogger;->brazelog$default(Lcom/braze/support/BrazeLogger;Ljava/lang/Object;Lcom/braze/support/BrazeLogger$Priority;Ljava/lang/Throwable;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method
