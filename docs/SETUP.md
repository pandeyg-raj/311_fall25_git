# Setting up SSH Keys for GitHub

This guide walks you through generating and configuring SSH keys so you can securely connect to GitHub without needing to enter your username and password each time.

---

## 1. Check for existing SSH keys
Before creating a new SSH key, check if you already have one.

    ls -al ~/.ssh

Look for files named:

- id_rsa.pub, id_ed25519.pub, or similar (.pub means it’s the public key).

If you already have a key you want to use, skip to Step 3.

---

## 2. Generate a new SSH key
Run the following command (replace your email with the one linked to your GitHub account):

    ssh-keygen -t ed25519 -C "your_email@example.com"

If your system does not support Ed25519, use RSA:

    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

When prompted:
- Press Enter to accept the default file location.
- Optionally, enter a passphrase for extra security.

---

## 3. Add your SSH key to the SSH agent
Start the SSH agent in the background:

    eval "$(ssh-agent -s)"

Add your key to the agent:

    ssh-add ~/.ssh/id_ed25519

(Replace with your key filename if different, e.g., id_rsa.)

---

## 4. Add the SSH key to your GitHub account
Copy the public key to your clipboard:

    cat ~/.ssh/id_ed25519.pub

- On macOS:  
      pbcopy < ~/.ssh/id_ed25519.pub  
- On Windows (Git Bash):  
      clip < ~/.ssh/id_ed25519.pub  

Then:

1. Go to https://github.com/settings/keys
2. Click "New SSH Key".
3. Paste the key into the Key field.
4. Give it a descriptive Title.
5. Click "Add SSH key".

---

## 5. Test your SSH connection
Run:

    ssh -T git@github.com

If successful, you’ll see a message like:

    Hi username! You've successfully authenticated, but GitHub does not provide shell access.

---

## 6. Use SSH for Git operations
When cloning repositories, use the SSH URL instead of HTTPS. For example:

    git clone git@github.com:username/repository.git

---

## ✅ Done!
You can now push and pull from GitHub without entering your username/password each time.
# Setting up SSH Keys for GitHub

This guide walks you through generating and configuring SSH keys so you can securely connect to GitHub without needing to enter your username and password each time.

---

## 1. Check for existing SSH keys
Before creating a new SSH key, check if you already have one.

    ls -al ~/.ssh

Look for files named:

- id_rsa.pub, id_ed25519.pub, or similar (.pub means it’s the public key).

If you already have a key you want to use, skip to Step 3.

---

## 2. Generate a new SSH key
Run the following command (replace your email with the one linked to your GitHub account):

    ssh-keygen -t ed25519 -C "your_email@example.com"

If your system does not support Ed25519, use RSA:

    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

When prompted:
- Press Enter to accept the default file location.
- Optionally, enter a passphrase for extra security.

---

## 3. Add your SSH key to the SSH agent
Start the SSH agent in the background:

    eval "$(ssh-agent -s)"

Add your key to the agent:

    ssh-add ~/.ssh/id_ed25519

(Replace with your key filename if different, e.g., id_rsa.)

---

## 4. Add the SSH key to your GitHub account
Copy the public key to your clipboard:

    cat ~/.ssh/id_ed25519.pub

- On macOS:  
      pbcopy < ~/.ssh/id_ed25519.pub  
- On Windows (Git Bash):  
      clip < ~/.ssh/id_ed25519.pub  

Then:

1. Go to https://github.com/settings/keys
2. Click "New SSH Key".
3. Paste the key into the Key field.
4. Give it a descriptive Title.
5. Click "Add SSH key".

---

## 5. Test your SSH connection
Run:

    ssh -T git@github.com

If successful, you’ll see a message like:

    Hi username! You've successfully authenticated, but GitHub does not provide shell access.

## ✅ Done!


