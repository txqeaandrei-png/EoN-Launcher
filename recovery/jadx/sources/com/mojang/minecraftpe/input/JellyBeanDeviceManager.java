package com.mojang.minecraftpe.input;

import android.content.Context;
import android.hardware.input.InputManager;

/* JADX INFO: loaded from: classes4.dex */
public class JellyBeanDeviceManager extends InputDeviceManager implements InputManager.InputDeviceListener {
    private final InputManager inputManager;

    native void onInputDeviceAddedNative(int i);

    native void onInputDeviceChangedNative(int i);

    native void onInputDeviceRemovedNative(int i);

    native void setControllerDetailsNative(int i, boolean z, boolean z2);

    native void setDoubleTriggersSupportedNative(boolean z);

    native void setFoundDualsenseControllerNative(boolean z);

    native void setFoundPlaystationControllerNative(boolean z);

    native void setFoundXboxControllerNative(boolean z);

    JellyBeanDeviceManager(Context context) {
        this.inputManager = (InputManager) context.getSystemService("input");
    }

    @Override // com.mojang.minecraftpe.input.InputDeviceManager
    public void register() {
        int[] inputDeviceIds = this.inputManager.getInputDeviceIds();
        this.inputManager.registerInputDeviceListener(this, null);
        setDoubleTriggersSupportedNative(InputCharacteristics.allControllersHaveDoubleTriggers());
        for (int i = 0; i < inputDeviceIds.length; i++) {
            int i2 = inputDeviceIds[i];
            setControllerDetailsNative(i2, InputCharacteristics.isCreteController(i2), InputCharacteristics.supportsAnalogTriggers(inputDeviceIds[i]));
        }
        checkForXboxAndPlaystationController();
    }

    @Override // com.mojang.minecraftpe.input.InputDeviceManager
    public void unregister() {
        this.inputManager.unregisterInputDeviceListener(this);
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceAdded(int i) {
        onInputDeviceAddedNative(i);
        setDoubleTriggersSupportedNative(InputCharacteristics.allControllersHaveDoubleTriggers());
        setControllerDetailsNative(i, InputCharacteristics.isCreteController(i), InputCharacteristics.supportsAnalogTriggers(i));
        if (InputCharacteristics.isXboxController(i)) {
            setFoundXboxControllerNative(true);
        } else if (InputCharacteristics.isPlaystationController(i)) {
            setFoundPlaystationControllerNative(true);
            if (InputCharacteristics.isDualsenseController(i)) {
                setFoundDualsenseControllerNative(true);
            }
        }
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceChanged(int i) {
        onInputDeviceChangedNative(i);
        setDoubleTriggersSupportedNative(InputCharacteristics.allControllersHaveDoubleTriggers());
        setControllerDetailsNative(i, InputCharacteristics.isCreteController(i), InputCharacteristics.supportsAnalogTriggers(i));
        checkForXboxAndPlaystationController();
    }

    @Override // android.hardware.input.InputManager.InputDeviceListener
    public void onInputDeviceRemoved(int i) {
        onInputDeviceRemovedNative(i);
        setDoubleTriggersSupportedNative(InputCharacteristics.allControllersHaveDoubleTriggers());
        setControllerDetailsNative(i, InputCharacteristics.isCreteController(i), InputCharacteristics.supportsAnalogTriggers(i));
        checkForXboxAndPlaystationController();
    }

    public void checkForXboxAndPlaystationController() {
        boolean zIsXboxController = false;
        boolean zIsPlaystationController = false;
        boolean zIsDualsenseController = false;
        for (int i : this.inputManager.getInputDeviceIds()) {
            zIsXboxController |= InputCharacteristics.isXboxController(i);
            zIsPlaystationController |= InputCharacteristics.isPlaystationController(i);
            zIsDualsenseController |= InputCharacteristics.isDualsenseController(i);
            if (zIsXboxController && zIsPlaystationController) {
                break;
            }
        }
        setFoundXboxControllerNative(zIsXboxController);
        setFoundPlaystationControllerNative(zIsPlaystationController);
        setFoundDualsenseControllerNative(zIsDualsenseController);
    }
}
