#!/bin/bash
clear
cd ../../../..
cd frameworks/av
git apply -v  ../../device/infinix/x603/patches_decker/0001-mtk-audio-fix.patch
git apply -v  ../../device/infinix/x603/patches_decker/0003-add-mising-MediaBufferGroup-acquire_buffer-symbol.patch
git apply -v  ../../device/infinix/x603/patches_decker/0004-add-mising-MediaBufferGroup-acquire_buffer-symbol-2.patch
cd ../..
cd frameworks/native
#Не используется (!), этот символ уже определен в libmtk_symbols ...
git apply -v  ../../device/infinix/x603/patches_decker/0005-_ZN7android13GraphicBufferC1Ejjij-symbol-fix-on-fram.patch
cd ../..

#echo "Проверьте, все ли патчи из каталога прописаны в скрипте!"
#echo Patches Applied Successfully!
