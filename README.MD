JNI调试方法：

1.debugger: Andorid Stuidio上使用debugger 打断点调试。详细使用：https://developer.android.google.cn/studio/debug

2.ndk-gdb: 命令行工具 类似gdb，与debugger功能差不多: https://developer.android.google.cn/ndk/guides/ndk-gdb

3.ndk-stack: 在代码异常退出（crash）时，调用ndk-stack 分析错误位置。 详细使用：https://developer.android.google.cn/ndk/guides/ndk-stack

4.checkjni: checkjni会在运行时进行错误检查检查。 打开checkjni开关命令： adb shell setprop debug.checkjni 1

JNI内存问题调试:(需要模拟器支持)
1.libc debug 模式:adb shell setprop libc.debug.malloc 1 (目前没发现起作用)

2.valgrind工具: 但是这个工具在android里运行太慢，Android里的bionic库提供了内存泄漏的检测方法

3.strace: 显示系统调用



JNI方法签名生成: Javap
zhangzhilin@zhangzhilin:~/JniTest/app/build/intermediates/javac/debug/classes$ javap -classpath com/example/jnitest/ -p -s MainActivity

