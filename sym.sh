#!/bin/sh
files=`find . -name '*.so'`
"$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.7/prebuilt/darwin-x86_64/arm-linux-androideabi/bin/nm" --print-file-name --demangle --dynamic --defined-only $files 2> /dev/null > sym_exp.txt
"$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.7/prebuilt/darwin-x86_64/arm-linux-androideabi/bin/nm" --print-file-name --demangle --dynamic --undefined-only $files 2> /dev/null > sym_imp.txt
