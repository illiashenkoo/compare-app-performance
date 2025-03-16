# ========== AndroidX ==========
-keep class androidx.** { *; }
-dontwarn androidx.**

# ========== Core Android ==========
-keep public class * extends android.app.Application
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider

# ========== Kotlin Metadata ==========
-keep class kotlin.Metadata { *; }

# ========== Kotlin Coroutines ==========
-keep class kotlinx.coroutines.** { *; }
-dontwarn kotlinx.coroutines.**

# ========== Jetpack Compose ==========
-keep class androidx.compose.** { *; }
-dontwarn androidx.compose.**

# Залишаємо всі public API в Compose без змін
-keepclassmembers class androidx.compose.** { *; }

# Compose Compiler Plugin потребує цього для деяких внутрішніх штук
-keepclassmembers class * {
    @androidx.compose.runtime.Composable <methods>;
}

# ========== Parcelable ==========
-keepclassmembers class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# ========== Native methods ==========
-keepclasseswithmembernames class * {
    native <methods>;
}

# ========== Gson ==========
-keep class com.google.gson.** { *; }
-keepattributes Signature
-keepattributes *Annotation*

# ========== Retrofit ==========
-keep class retrofit2.** { *; }
-keep interface retrofit2.** { *; }
-dontwarn retrofit2.**

# ========== OkHttp ==========
-keep class okhttp3.** { *; }
-dontwarn okhttp3.**

# ========== Glide ==========
-keep class com.bumptech.glide.** { *; }
-keep interface com.bumptech.glide.** { *; }
-dontwarn com.bumptech.glide.**

# ========== Dagger / Hilt ==========
-keep class dagger.** { *; }
-dontwarn dagger.**
-keep class javax.inject.** { *; }
-dontwarn javax.inject.**

# ========== Optional Debug helpers ==========
-keepclassmembers class ** {
    public void *(org.json.JSONObject);
}

# ========== Lambda (safe keeping) ==========
-keepclassmembers class * {
    ** lambda*(...);
}