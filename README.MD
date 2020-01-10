JNI调试方法：
1.debugger: Andorid Stuidio上使用debugger 打断点调试。详细使用：https://developer.android.google.cn/studio/debug
2.ndk-stack: 在代码异常退出（crash）时，调用ndk-stack 分析错误位置。 详细使用：https://developer.android.google.cn/ndk/guides/ndk-stack
3.checkjni: checkjni会在运行时进行错误检查检查。 打开checkjni开关命令： adb shell setprop debug.checkjni 1
