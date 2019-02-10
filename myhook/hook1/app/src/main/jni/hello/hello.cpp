//
// Created by imbaya on 2019/2/9.
//

#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring

JNICALL
Java_com_imbaya_androidhook_MainActivity_stringFromJNI(
        JNIEnv *env,
        jobject /* this */) {
    static int i=0;
    i++;
    std::string hello = "Hello from C++";
    hello=hello+std::to_string(i);
    return env->NewStringUTF(hello.c_str());
}
