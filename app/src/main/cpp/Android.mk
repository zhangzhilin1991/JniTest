#
# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#详细介绍见：https://developer.android.google.cn/ndk/guides/android_mk
#my-dir 将返回当前目录（Android.mk 文件本身所在的目录）的路径。
LOCAL_PATH := $(call my-dir)

#CLEAR_VARS 变量指向一个特殊的 GNU Makefile，后者会清除许多 LOCAL_XXX 变量，例如 LOCAL_MODULE、LOCAL_SRC_FILES
#和 LOCAL_STATIC_LIBRARIES。请注意，GNU Makefile 不会清除 LOCAL_PATH。此变量必须保留其值，因为系统在单一
#GNU Make 执行环境（其中的所有变量都是全局变量）中解析所有编译控制文件。在描述每个模块之前，必须声明（重新声明）此变量。
include $(CLEAR_VARS)

#LOCAL_MODULE 变量存储您要编译的模块的名称。请在应用的每个模块中使用一次此变量。
#每个模块名称必须唯一，且不含任何空格。编译系统在生成最终共享库文件时，会对您分配给 LOCAL_MODULE 的名称自动添加正确的前缀和后缀。
#例如，上述示例会生成名为 libhello-jni.so 的库。
LOCAL_MODULE    := hello-jni

#下一行会列举源文件，以空格分隔多个文件：
#LOCAL_SRC_FILES 变量必须包含要编译到模块中的 C 和/或 C++ 源文件列表。
LOCAL_SRC_FILES := hello-jni.cpp

#最后一行帮助系统将所有内容连接到一起：
#BUILD_SHARED_LIBRARY 变量指向一个 GNU Makefile 脚本，该脚本会收集您自最近 include 以来在 LOCAL_XXX
#变量中定义的所有信息。此脚本确定要编译的内容以及编译方式。
include $(BUILD_SHARED_LIBRARY)