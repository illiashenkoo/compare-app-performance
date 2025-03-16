# ========== Flutter core ==========
-keep class io.flutter.app.** { *; }
-keep class io.flutter.embedding.** { *; }
-keep class io.flutter.plugins.** { *; }
-keep class io.flutter.view.** { *; }
-keep class io.flutter.** { *; }
-keep class io.flutter.util.** { *; }

# ========== Flutter deferred components (Play Core API) ==========
-keep class com.google.android.play.core.splitcompat.SplitCompatApplication { *; }
-keep class com.google.android.play.core.splitinstall.** { *; }
-keep class com.google.android.play.core.tasks.** { *; }
-keep interface com.google.android.play.core.splitinstall.** { *; }
-keep interface com.google.android.play.core.tasks.** { *; }
-dontwarn com.google.android.play.core.**

-keep class io.flutter.embedding.engine.deferredcomponents.** { *; }

# ========== Android Core ==========
-keep public class * extends android.app.Application { void <init>(); }
-keep public class * extends io.flutter.embedding.android.FlutterActivity { void <init>(); }
-keep public class * extends io.flutter.embedding.android.FlutterFragmentActivity { void <init>(); }

# ========== Parcelable ==========
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# ========== Native Methods ==========
-keepclasseswithmembernames class * {
    native <methods>;
}

# ========== Kotlin metadata ==========
-keep class kotlin.Metadata { *; }

# ========== Optional (Gson) ==========
-keep class com.google.gson.** { *; }
-keepattributes Signature
-keepattributes *Annotation*

# ========== Optional (Retrofit) ==========
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }
-dontwarn retrofit2.**

# ========== Optional (OkHttp) ==========
-keep class okhttp3.** { *; }
-dontwarn okhttp3.**

# ========== Optional (Glide) ==========
-keep class com.bumptech.glide.** { *; }
-keep interface com.bumptech.glide.** { *; }
-dontwarn com.bumptech.glide.**

# ========== Optional (Firebase) ==========
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**

# ========== Licensing services (за потреби) ==========
-keep public class com.google.vending.licensing.ILicensingService { void <init>(); }
-keep public class com.android.vending.licensing.ILicensingService { void <init>(); }
-keep public class com.google.android.vending.licensing.ILicensingService { void <init>(); }

# ========== Optional Debug Helpers ==========
-keepclassmembers class ** {
    public void *(org.json.JSONObject);
}

# ========== Optional Lambda ==========
-keepclassmembers class * {
    ** lambda*(...);
}