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

### 2. Installing git on Computer

If you don't have git on your local machine, it will show an error message "unknown command" when you try the git command on your terminal. To install git on your local machine, follow the command:

    $ sudo apt install git

### 3. Configuring the git

To configure your git client in the terminal (either your VM or your Linux/WSL machine), set your name and email using the following commands:

    $ git config --global user.name “Your Name”
    $ git config --global user.email  ”Your Email”

### 4. Adding SSH key
To authenticate your Git client while working with your repository, add your public SSH key to your GitHub account. To do so, follow the below steps: 

#### Check for existing SSH keys
Before creating a new SSH key, check if you already have one.

    ls -al ~/.ssh

Look for files named:

- id_rsa.pub, id_ed25519.pub, or similar (.pub means it’s the public key).

If you already have a key you want to use, skip to Step 5.

---

#### Generate a new SSH key
Run the following command (replace your email with the one linked to your GitHub account):

    ssh-keygen -t rsa -b 4096 -C "your_email@example.com"

When prompted:
- Press Enter to accept the default answers.
- NOTE:When you create the ssh key pair the output will contain a line: Your public key has been saved in /home/cmpsc31/.ssh/testKey.pub. This .pub file the one the you have to open and copy its content on GitHub.com. It also shows you the   path where the .pub file is stored.
  
---
### 5. Add the SSH key to your GitHub account
Copy the public key to your clipboard: ( change the name of id_rsa.pub to your keys name if its different. It should end in *.pub* )

    cat ~/.ssh/id_rsa.pub
Then:

1. Go to https://github.com/settings/keys
2. Click "New SSH Key".
3. Paste the key into the Key field.
4. Give it a descriptive Title.
5. Click "Add SSH key".

---
Refer to following link for troubleshooting guide
https://docs.github.com/en/authentication/connecting-to-github-with-ssh

## ✅ Done!

## Part 2: Accepting the assignment
Before starting part to make sure you have completed Part 1. Once the assignment is released, you will receive an invitation link to join a corresponding private repository. By accepting the invitation,  you will have access to your private repository containing the starter files we provide. 

1. **Clone the repository**  
   Use `git clone <repo_url>` to download the assignment repository to your local machine. This command will download the repository to your current working directory.
   If cloned succesful, you should have a repository directory crerated in current working directory. You can use *ls* command to see the listing of files in current directory.
      
   After cloning the repository, change the current directory to repository directory using

        cd <repo_name>

3. **Create a new text file**  
   - Use editor of your choice to create a new text file with name `name.txt`.  
   - The file should contain **only your full name** on the first line.  

4. **Add, commit, and push the file**
    Whenever you change an existing file or add a new file to your local repository, you must commit the changes and then push them to the remote repository on gitHub.com.
    Please refer to cheatsheet for more commands.
   
    Add newly created file *name.txt*

             git add name.txt
    Commit the changes with a message about that change:
    
            git commit -m "Add name.txt"
    Finally, push the changes to the remote repository:

            git push origin

---

5. **Modify `ID.txt` file**  
    - Replace the placeholder text in file with actual details  

6. **Add, commit, and push the updated file**  
    ```bash
    git add ID.txt
    git commit -m "Update ID.txt with PSU ID"
    git push origin
    ```
    NOTE: Any time you make changes to *ID.txt*, you have to repeat step 6

7. Commit id
   In Git, each commit has a unique identifier called a "commit ID" (or SHA-1 hash). This ID helps you reference specific commits. To get the latest commit ID, follow these steps:
   
       git log -1 --pretty=format:"%H"

   - git log: Shows the commit history.

   - -1: Limits the output to only the most recent commit.

   - --pretty=format:"%H": Displays the full commit hash.
      
## Final Deliverable

At the end of this assignment:
- The repository should contain:
  - `name.txt` with your name.  
  - `ID.txt` containing **your actual details**.  
- All changes must be committed and pushed to the repository.
You need to submit the latest commit id. See step 7 for details on how to get latest commit id.
