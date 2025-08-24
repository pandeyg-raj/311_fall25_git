# Assignment Instructions

Follow the steps below carefully. Each step builds upon the previous one, so complete them in order.

---
## Part 1: Setting up git and GitHub
Before woking on assignment, you need to make sure git is configured properly. This should be one time task for rest of the course.
This guide walks you through generating and configuring SSH keys so you can securely connect to GitHub and work on assignments.

---
### 1. Signing Up

To use GitHub, you first need to create an account. To do that, go to https://github.com, click on the Sign-Up button, and proceed to the registration form. Choose a proper username and remember your login credentials.
NOTE: If you already have a Github account, you can skip this step. However, you cannot change your Github username throughout the semester.

## 2. Installing git on Computer

If you don't have git on your local machine, it will show an error message "unknown command" when you try the git command on your terminal. To install git on your local machine, follow the command:

    $ sudo apt install git

## 1. Check for existing SSH keys
Before creating a new SSH key, check if you already have one.

    ls -al ~/.ssh

Look for files named:

- id_rsa.pub, id_ed25519.pub, or similar (.pub means it’s the public key).

If you already have a key you want to use, skip to Step 3.

---

## 2. Generate a new SSH key
Run the following command (replace your email with the one linked to your GitHub account):

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

## ✅ Done!

## Part 2: Initial Setup
1. **Clone the repository**  
   Use `git clone <repo_url>` to download the repository to your local machine.

2. **Create a new text file**  
   - Name the file `name.txt`.  
   - The file should contain **only your full name** on the first line.  
   - Do not include any extra spaces, lines, or characters.

3. **Add, commit, and push the file**  
   - Run:  
     ```bash
     git add name.txt
     git commit -m "Add name.txt"
     git push
     ```

---

12. **Modify `ID.txt` on the main branch**  
    - Replace the placeholder text `psu_id`  
      with **your actual 9-digit PSU ID**.

13. **Add, commit, and push the updated file**  
    ```bash
    git add ID.txt
    git commit -m "Update ID.txt with PSU ID"
    git push
    ```

## Final Deliverable
At the end of this assignment:
- The repository should contain:
  - `name.txt` with your name.  
  - A merged version of `ID.txt` containing **both your PSU ID and the course name**.  
- All changes must be committed and pushed to the repository.
