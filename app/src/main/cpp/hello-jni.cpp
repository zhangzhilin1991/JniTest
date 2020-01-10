#include <jni.h>
#include <string>


const bool isTestNdkSTACK = false;
const bool isTestCheckJni = true;

jstring TestNdkSTACK (JNIEnv *env);
jstring TestCheckJni (JNIEnv *env);


extern "C" JNIEXPORT jstring JNICALL
Java_com_example_jnitest_MainActivity_stringFromJNI(
        JNIEnv *env,
        jobject /* this */) {
    if (isTestNdkSTACK) {
        return TestNdkSTACK(env);
    } else if (TestCheckJni) {
        return TestCheckJni(env);
    } else {
        std::string hello = "Hello from jni";
        return env->NewStringUTF(hello.c_str());
    }
}

//debug ndk-stack 工具使用 : https://developer.android.google.cn/ndk/guides/ndk-stack
jstring TestNdkSTACK (JNIEnv *env) {
    env = 0;
    std::string hello = "Hello from jni";
    return env->NewStringUTF(hello.c_str());
}


//checkjni 开关打开后会在运行时进行异常检查,如果出现异常，就终止执行
//异常log： 2020-01-10 18:09:38.385 18568-18568/com.example.jnitest A/art: art/runtime/java_vm_ext.cc:470] JNI DETECTED ERROR IN APPLICATION: negative jsize: -1...
jstring TestCheckJni (JNIEnv *env) {
    jintArray jIntArrays = env->NewIntArray(-1);

    std::string hello = "Hello from jni";
    return env->NewStringUTF(hello.c_str());
}
