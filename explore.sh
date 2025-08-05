#!/bin/bash

COMMAND=$1
DB_FILE="commands-db.txt"

if [ -z "$COMMAND" ]; then
  echo "❗ من فضلك أدخل أمر لينكس تريد شرحه"
  echo "مثال: ./explore.sh ls"
  exit 1
fi

if ! grep -q "^:$COMMAND" "$DB_FILE"; then
  echo "❌ الأمر '$COMMAND' غير موجود في قاعدة البيانات."
  echo "🎯 يمكنك طلب إضافته لاحقًا."
  exit 1
fi

# طلع السطور الخاصة بالأمر
awk -v cmd=":$COMMAND" '
  $0 == cmd {flag=1; next}
  /^:/ && flag {exit}
  flag
' "$DB_FILE"
