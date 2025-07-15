# Lab: Killing Nested `sh` Sessions via SSH

## Instructions

You will need 2 sessions, each one in a different tab

### Session 1 (Terminal A) — Create `sh` in `sh` or even `bash`

1. SSH into the machine:
    
    ```bash
    ssh student@<your-server>
    ```
    
2. Create a chain of nested shells using sh multiple time, you can confirm its a new process by typing `echo $$` after each time you typed `sh` or `bash` command

---

### Session 2 (Terminal B) — Find and Kill

1. SSH into the same server using another session:
2. Display all user processes in a tree:
    
    ```bash
    ps -f -u student
    ```
    
3. Identify the top-level nested `sh` under your login shell.
    
    Example output:
    
    ```
    student  3154  ...  -bash
     \_ sh
         \_ sh
             \_ sh
     ps -u student -f --forest
    ```
    
4. Kill the **first `sh`** under `bash`:
    
    ```bash
    kill -9 <PID>
    ```
    
    (Replace `<PID>` with the correct number, e.g., `kill -9 3180`)
    

---

### Result

- Session 1 is kicked out of all nested `sh` layers.
- You'll return to the original bash prompt or exit completely.

---

## Explanation

- Each `sh` is a child of the previous `sh`.
- Killing the **top `sh`** removes all children.
- Killing only the last `sh` returns you one level up.

---
