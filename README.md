# Morning Challenges - Melbourne FastTrack

## Setup

Before you start, make sure you have a folder on your computer to store your work. I would use something like `~/coder`.

1. Clone this repo into your `coder` or working directory. `git clone git@github.com:CoderAcademy-MEL/FastTrack_21_morning_challenges.git`.
2. Create a new git branch to work in. You can give this any name you like e.g. `git branch working`.
3. Change into this newly created branch. If you used a different name, you might need to change *working* `git checkout working`.
4. Your terminal should show `Switched to branch 'working'`.
5. You are ready to start the first challenge. Change into the `html_css` directory to find it.
6. New challenges will be released every class morning (Monday-Wednesday).

## Daily Workflow

On the first day, you will have the most up-to-date code. However, as other developers add commits to the main branch, your copy of the code will become 'stale'. One very common workflow that most professional programmers follow is to make sure they have the latest changes in their local copy of the repository before they start work each morning.

We will be using this workflow for the rest of the course to get new morning challenges.

1. In the working branch you created in **Setup**, make sure you have added and committed any changes.
2. Check again by running `git status`. You should see you are on branch working and your working tree is clean.
3. Change back into the main branch `git checkout main`.
4. Pull the new changes from GitHub `git pull` you don't need to specify a location as git remembers where you first clone it from.
5. You should see some green `++` or red `--` lines and new files downloaded.
6. Change back into your working branch, `git checkout working`. You may notice the new files are missing.
7. To get the new changes in your working branch, you will need to merge them in `git merge main`.
8. You may get prompted to write a commit message explaining the reason for the merge. You can close this window. `ctrl + x` for nano `:q` for vim.
9. You are ready to start the new day's challenges!
