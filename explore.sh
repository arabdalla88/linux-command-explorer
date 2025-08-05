#!/bin/bash

# اسم الأمر اللي هيتشرح
COMMAND=$1

# معرفة مكان السكريبت نفسه
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# تحديد ملف قاعدة البيانات بناءً على مكان السكريبت
DB_FILE="$SCRIPT_DIR/commands-db.txt"

# التحقق من إدخال الأمر
if [[ -z "$COMMAND" ]]; then
  echo "❗ من فضلك أدخل أمر لينكس تريد شرحه"
  echo "مثال: explore ls"
  exit 1
fi

# التحقق من وجود قاعدة البيانات
if [[ ! -f "$DB_FILE" ]]; then
  echo "❌ قاعدة البيانات غير موجودة في نفس مجلد السكريبت: $DB_FILE"
  exit 1
fi

# التحقق من وجود الأمر في قاعدة البيانات
if ! grep -q "^:$COMMAND" "$DB_FILE"; then
  echo "❌ الأمر '$COMMAND' غير موجود في قاعدة البيانات."
  echo "🎯 يمكنك طلب إضافته لاحقًا."
  exit 1
fi

# طباعة شرح الأمر
awk -v cmd=":$COMMAND" '
  trim($0) == cmd {flag=1; next}
  /^:/ && flag {exit}
  flag

function trim(s) {
  gsub(/^[ \t\r\n]+|[ \t\r\n]+$/, "", s)
  return s
}
' "$DB_FILE"
