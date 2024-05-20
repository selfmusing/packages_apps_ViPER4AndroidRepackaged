# ViPER4AndroidFXRepackaged
- Add this in **device.mk**: $(call inherit-product, vendor/ViPER4AndroidFXRepackaged/config.mk)

Add this in your dt at **configs/audio/audio_effects.xml**:

    <library name="v4a_fx" path="libv4a_fx.so"/>
    <effect name="v4a_standard_fx" library="v4a_fx" uuid="41d3c987-e6cf-11e3-a88a-11aba5d5c51b"/>
    
Also you need to address some SELinux denials in **audioserver.te**:

    get_prop(audioserver, vendor_audio_prop)
    allow audioserver unlabeled:file { read write open getattr };
    allow hal_audio_default hal_audio_default:process { execmem };