# 🐧 Linux Command Explorer - بالعربي

أداة بسيطة تشتغل من الطرفية (Terminal) بتشرح أوامر لينكس بالعربي، بسرعة وسهولة، للمبتدئين وكل المهتمين بتعلم لينكس.

---

## ✨ مثال على الاستخدام:

```bash
explore ls
🔹 يطبع شرح مبسط باللغة العربية للأمر ls مع أمثلة استخدام.

⚙️ خطوات التثبيت:
1. استنساخ المشروع:
bash
Copy
Edit
git clone https://github.com/YOUR_USERNAME/linux-command-explorer.git
cd linux-command-explorer
2. تثبيت الأداة على جهازك:
bash
Copy
Edit
chmod +x explore.sh
cp explore.sh ~/.local/bin/explore

# إنشاء مجلد لتخزين قاعدة البيانات
mkdir -p ~/.local/share/linux-command-explorer
cp commands.txt ~/.local/share/linux-command-explorer/
3. تأكد إن ~/.local/bin في PATH:
bash
Copy
Edit
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
🧪 استخدام الأداة:
bash
Copy
Edit
explore cd
🔹 هيطبع شرح للأمر cd من قاعدة البيانات.

✍️ إضافة أوامر جديدة:
افتح الملف:

bash
Copy
Edit
nano ~/.local/share/linux-command-explorer/commands.txt
ثم أضف بالشكل التالي:

bash
Copy
Edit
:command
شرح بالعربي للأمر...
أمثلة:
  command arg1      # مثال 1
  command -x        # مثال 2
🤝 المساهمة:
مرحب بأي حد يشارك بإضافة أوامر جديدة أو تطوير السكريبت، افتح Pull Request أو Issue بأي اقتراح.

📜 مثال للأوامر المتاحة حالياً:
ls

cd

mkdir

rm

cp

mv

touch

cat

pwd

echo

💡 أفكار مستقبلية:
دعم البحث بالكلمات (مش بس اسم الأمر)

دعم أكثر للغة العربية بتنسيقات وألوان

نسخة Python تدعم ملفات JSON

ربط بالأوامر من مصادر خارجية أو الذكاء الاصطناعي

📄 الترخيص:
مشروع مفتوح المصدر ❤️

yaml
Copy
Edit

---

## ✅ الخطوة الجاية:

- عدّل السطر ده في السكريبت:
  ```bash
  DB_FILE="$HOME/.local/share/linux-command-explorer/commands.txt"
