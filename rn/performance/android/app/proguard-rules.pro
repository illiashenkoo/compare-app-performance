# ========== React Native core ==========
-keep class com.facebook.react.** { *; }
-keep class com.facebook.react.bridge.** { *; }
-keep class com.facebook.react.modules.** { *; }
-keep class com.facebook.react.uimanager.** { *; }
-keep class com.facebook.react.views.** { *; }
-keep class com.facebook.react.modules.network.** { *; }

# ========== React Native Hermes ==========
-keep class com.facebook.hermes.** { *; }
-keep class com.facebook.jni.** { *; }

# ========== OkHttp (network layer) ==========
-keep class okhttp3.** { *; }
-dontwarn okhttp3.**

# ========== Keep MainActivity / Application ==========
-keep class com.yourcompany.yourapp.** { *; }
# заміни на свій package name

-keep public class * extends android.app.Application
-keep public class * extends com.facebook.react.ReactActivity

# ========== Gson (optional) ==========
-keep class com.google.gson.** { *; }
-keepattributes Signature
-keepattributes *Annotation*

# ========== Retrofit (optional) ==========
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }
-dontwarn retrofit2.**

# ========== Fresco (if using RN image components) ==========
-keep class com.facebook.fresco.** { *; }
-dontwarn com.facebook.fresco.**

# ========== React Native Navigation (optional) ==========
-keep class com.reactnativenavigation.** { *; }
-dontwarn com.reactnativenavigation.**

# ========== Optional: Keep native methods ==========
-keepclasseswithmembernames class * {
    native <methods>;
}

# ========== Optional: Support Parcelable ==========
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# ========== Optional: Debug helpers (JSON, logs) ==========
-keepclassmembers class ** {
    public void *(org.json.JSONObject);
}

# ========== Fabric (if enabled) ==========
-keep class com.facebook.react.fabric.** { *; }
-keep class com.facebook.react.uimanager.fabric.** { *; }

# ========== TurboModules (if enabled) ==========
-keep class com.facebook.react.turbomodule.** { *; }
-keep class com.facebook.react.module.annotations.** { *; }
