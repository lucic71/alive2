git fetch upstream
git checkout master
git rebase upstream/master
git push
git checkout llvm16
git merge master
