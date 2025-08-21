# Assignment Instructions

Follow the steps below carefully. Each step builds upon the previous one, so complete them in order.

---

## Part 1: Initial Setup
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

## Part 2: Working with Branches
4. **Examine the provided `ID.txt` file**  
   Open and review the contents of `ID.txt` in the repository.

5. **Run the script to create a new branch**  
   - Execute the script `create_new_branch`.  
   - This will automatically create a branch named `new_branch`.  
   - You may need to grant execution permission using:  
     ```bash
     chmod +x create_new_branch
     ```

6. **Verify branch creation**  
   Use the following command to confirm the branch exists:  
   ```bash
   git branch -a
