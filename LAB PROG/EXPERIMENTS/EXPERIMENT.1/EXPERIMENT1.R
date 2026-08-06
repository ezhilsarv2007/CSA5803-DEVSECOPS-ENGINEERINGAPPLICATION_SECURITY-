# DevSecOps Tool Installation and Configuration using R

cat("Updating package repository...\n")
system("sudo apt-get update -y")

cat("Installing Git...\n")
system("sudo apt-get install -y git")

cat("Configuring Git...\n")
system('git config --global user.name "Your Name"')
system('git config --global user.email "your_email@example.com"')

cat("Generating SSH Key...\n")
system('ssh-keygen -t ed25519 -C "your_email@example.com" -f ~/.ssh/id_ed25519 -N ""')

cat("Starting SSH Agent...\n")
system('eval "$(ssh-agent -s)"')
system("ssh-add ~/.ssh/id_ed25519")

cat("Displaying Public SSH Key...\n")
system("cat ~/.ssh/id_ed25519.pub")

cat("Testing GitHub Connection...\n")
system("ssh -T git@github.com")

cat("Installing Docker...\n")
system("sudo apt-get install -y docker.io")

cat("Checking Docker Version...\n")
system("docker --version")

cat("Checking Git Version...\n")
system("git --version")

cat("Installation Completed Successfully.\n")