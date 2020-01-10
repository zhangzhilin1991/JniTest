#此处的内容设置详细见：https://developer.android.google.cn/ndk/guides/application_mk
#指令集的设置
APP_ABI := armeabi-v7a

#C++ STL 运行时库设置，默认为最小的STL实现(system STL)
#libc++ 的共享库为 libc++_shared.so，静态库为 libc++_static.a。
APP_STL := c++_shared