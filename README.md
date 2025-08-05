# 🐧 Linux Command Explorer (Arabic)

A simple command-line tool that explains Linux commands in **Arabic**.  
Perfect for beginners and Arabic-speaking users learning Linux through the terminal.

---

## ✨ Example Usage

```bash
explore ls
📘 This prints a simple Arabic explanation of the ls command, including usage examples.

# ⚙️ Installation
## 1. Clone the repository:

git clone https://github.com/YOUR_USERNAME/linux-command-explorer.git
cd linux-command-explorer

## 2. Install the tool:

chmod +x explore.sh
cp explore.sh ~/.local/bin/explore

# Create folder for the command database

mkdir -p ~/.local/share/linux-command-explorer
cp commands.txt ~/.local/share/linux-command-explorer/

## 3. Ensure ~/.local/bin is in your PATH:

echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# 🧪 How to Use
## Run:

explore COMMAND_NAME

### Example:

explore cd
It will print a description and usage examples (in Arabic) for the specified command.

# 🛠️ Add New Commands
## Open the database file:

nano ~/.local/share/linux-command-explorer/commands.txt

###Add new commands in the following format:
:command
Arabic description of the command.
Examples:
  command arg1        # Example 1
  command -x          # Example 2
⚠️ Make sure each command starts with : and is followed by a blank line after its section.

# 📋 Included Commands (Examples)

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

# 💡 Future Improvements
Search by keyword (not just command name)

Colorful output using ANSI formatting

Switch to JSON database and use Python

Integration with AI to explain unknown commands

# 🤝 Contributing
Pull requests are welcome!
Feel free to suggest new features, fix issues, or add more command explanations.

# 📄 License
Open Source ❤️

---

## ✅ What to do now:

1. Replace `YOUR_USERNAME` with your GitHub username.
2. Save the file as `README.md` in the project root.
3. Add and push it to GitHub:

```bash
