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
   ```

7. **Switch to the new branch**  
   ```bash
   git checkout new_branch
   ```

8. **Confirm you are on the new branch**  
   Run:  
   ```bash
   git branch
   ```  
   The active branch will be marked with an asterisk (`*`).

---

## Part 3: Comparing File Versions
9. **Check the contents of `ID.txt` on the new branch**  
   ```bash
   cat ID.txt
   ```  
   You should notice the contents are **different** from the `ID.txt` in the main branch.  
   > *This is because the `create_new_branch` script modified it.*

10. **Switch back to the main branch**  
    ```bash
    git checkout main
    ```

11. **Confirm branch switch**  
    Run:  
    ```bash
    git branch
    ```  
    Ensure you are back on the `main` branch.

12. **Modify `ID.txt` on the main branch**  
    - Replace the placeholder text `place_your_psu_id_here`  
      with **your actual 9-digit PSU ID**.

13. **Add, commit, and push the updated file**  
    ```bash
    git add ID.txt
    git commit -m "Update ID.txt with PSU ID"
    git push
    ```

---

## Part 4: Merging Branches and Resolving Conflicts
14. At this point, the `ID.txt` file is **different** on the `main` branch and `new_branch`.

15. **Attempt to merge `new_branch` into `main`**  
    ```bash
    git merge new_branch
    ```

16. **Observe the merge conflict**  
    Since the two branches have different versions of `ID.txt`, Git will report a merge conflict.

17. **Resolve the merge conflict in `ID.txt`**  
    - Keep your **real PSU ID** from the `main` branch’s `ID.txt`.  
    - Keep the **course name** from the `new_branch`’s `ID.txt`.  
    - Save the final merged file.

18. **Finalize the merge**  
    ```bash
    git add ID.txt
    git commit -m "Resolve merge conflict in ID.txt"
    git push
    ```

---

## Final Deliverable
At the end of this assignment:
- The repository should contain:
  - `name.txt` with your name.  
  - A merged version of `ID.txt` containing **both your PSU ID and the course name**.  
- All changes must be committed and pushed to the repository.
