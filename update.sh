
#!/bin/bash
# Update Script for JaydenDev Software
# Version 21.11.1022-experimental

# Debug
#git remote -v update # update remotes
#git status -uno # checks status
#git show-branch *master # checks master branch

# better method
changed=0
git remote update &> /dev/null && git status -uno | grep -q 'Your branch is behind' && changed=1
if [ $changed = 1 ]; then
    git pull
    echo "Installed Available Updates";
else
    echo "No Updates Available"
fi
