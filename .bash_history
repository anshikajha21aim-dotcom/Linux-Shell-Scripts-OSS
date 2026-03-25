wsl
git --version
which git
whoami
cat ~/.gitconfig
ls /etc/gitconfig
git config --global user.name "Anshika Jha"
git config --global user.email "anshikajha21.aim@gmail.com"
ls /etc/gitconfig
ls -a ~
cat ~/.gitconfig
wsl --install
sudo apt update && sudo apt install git
sudo apt upgrade
nano identity.sh
chmod +x identity.sh
./identity.sh
nano identity.sh
nano inspector.sh
chmod +x inspector.sh
./inspector.sh
nano inspector.sh
nano Auditor.sh
chmod +x Auditor.sh
./Auditor.sh
nano log_analyzer.sh
chmod +x log_analyzer.sh
./log_analyzer.sh
nano manifesto.sh
chmod manifesto.sh
chmod +x manifesto.sh
./manifesto.sh
git config --global user.email "anshikajha21.aim@gmail.com"
git config --global user.name "Anshika Jha"
git init
# You can add them one by one:
git add identity.sh inspector.sh auditor.sh log_analyzer.sh manifesto.sh
# OR, to add everything in the folder at once:
git add .
# You can add them one by one:
git add identity.sh inspector.sh Auditor.sh log_analyzer.sh manifesto.sh
# OR, to add everything in the folder at once:
git add .
git commit -m "Initial upload of 5 shell scripts for Linux project"
# 1. Rename your default branch to 'main'
git branch -M main
# 2. Link your local folder to your GitHub repo 
# (Paste the URL you copied in Step 1)
git remote add origin https://github.com/anshikajha21aim-dotcom/Linux-Shell-Scripts-OSS.git
# 3. Push your files up to the cloud!
git push -u origin main
