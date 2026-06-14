#!/bin/bash

# المسار بتاع ملف الـ BoardConfig.mk
FILE="BoardConfig.mk"

echo "--- بدأنا عملية التعديل الاحترافي ---"

# دالة للتعديل: لو السطر موجود عدله، لو مش موجود ضيفه
update_var() {
    local key=$1
    local value=$2
    if grep -q "^$key" "$FILE"; then
        sed -i "s|^$key.*|$key := $value|" "$FILE"
        echo "تم تحديث: $key"
    else
        echo "$key := $value" >> "$FILE"
        echo "تم إضافة: $key"
    fi
}

# المتغيرات اللي إنت عايزها
update_var "DEVICE_RESOLUTION" "600x1024"
update_var "BOARD_RAMDISK_COMPRESSION" "lz4"

echo "--- التعديلات خلصت، جاري الرفع للسيرفر ---"

# الأتمتة عشان متوجعش دماغك
git add .
git commit -m "Auto-optimized: Resolution and LZ4 compression set"
git push

echo "--- مبروك! الأكشن بدأ يشتغل دلوقتي، روح تابع الـ Logs من الـ GitHub ---"

