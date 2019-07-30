@echo off

:: Clear
doskey clear=cls

doskey ls=dir
doskey ll=dir

:: New File
doskey touch=copy nul $* > nul

:: md - mkdir - included in Windows 10
:: rm - rmdir - included in Windows 10

:: DIRECTORY NAVIGATION
doskey ..=cd ..
doskey ...=cd ../..
doskey ....=cd ../../..
doskey .....=cd ../../../..
doskey /=cd /

:: GIT COMMANDS
doskey g=git $*
doskey ga=git add $*
doskey gau=git add -u $*
doskey gaa=git add --all $*
doskey gapa=git add --patch $*
doskey gb=git branch $*
doskey gba=git branch -a $*
doskey gbd=git branch -d $*
doskey gbl=git blame -b -w $*
doskey gbnm=git branch --no-merged $*
doskey gbr=git branch --remote $*
doskey gbs=git bisect $*
doskey gbsb=git bisect bad $*
doskey gbsg=git bisect good $*
doskey gbsr=git bisect reset $*
doskey gbss=git bisect start $*
doskey gc=git commit -v $*
doskey gc!=git commit -v --amend
doskey gca=git commit -v -a $*
doskey gca!=git commit -v -a --amend
doskey gcan!=git commit -v -a --no-edit --amend
doskey gcans!=git commit -v -a -s --no-edit --amend
doskey gcam=git commit -a -m $*
doskey gcsm=git commit -s -m $*
doskey gcb=git checkout -b $*
doskey gcf=git config --list $*
doskey gcl=git clone --recursive $*
doskey gclean=git clean -fd $*
doskey gpristine=git reset --hard $T git clean -dfx $*
doskey gcm=git checkout master $*
doskey gcd=git checkout develop $*
doskey gcmsg=git commit -m $*
doskey gco=git checkout $*
doskey gcount=git shortlog -sn $*
doskey gcp=git cherry-pick $*
doskey gcpa=git cherry-pick --abort $*
doskey gcpc=git cherry-pick --continue $*
doskey gcs=git commit -S $*
doskey gd=git diff $*
doskey gdca=git diff --cached $*
doskey gdct=git describe --tags `git rev-list --tags --max-count=1` $*
doskey gdt=git diff-tree --no-commit-id --name-only -r $*
doskey gdw=git diff --word-diff $*
doskey gf=git fetch $*
doskey gfa=git fetch --all --prune $*
doskey gfo=git fetch origin $*
doskey gg=git gui citool $*
doskey gga=git gui citool --amend
doskey ggpnp=git pull origin $* git push origin $*
doskey ggpull=git pull origin $*
doskey ggl=git pull origin $*
doskey ggpur=git pull --rebase origin $*
doskey glum=git pull upstream master $*
doskey ggpush=git push origin $*
doskey ggp=git push origin $*
doskey ggfl=git push --force-with-lease origin $*
doskey ggsup=git branch --set-upstream-to=origin/$*
doskey gpsup=git push --set-upstream origin $*
doskey gignore=git update-index --assume-unchanged $*
:: doskey gignored=git ls-files -v | grep "^:lower:" $*
doskey git-svn-dcommit-push=git svn dcommit $T git push github master:svntrunk $*
doskey gk=gitk --all --branches $*
doskey gl=git pull $*
doskey glg=git log --stat --max-count = 10 $*
doskey glgg=git log --graph --max-count = 10 $*
doskey glgga=git log --graph --decorate --all $*
doskey glo=git log --oneline --decorate --color $*
doskey glog=git log --oneline --decorate --color --graph $*
doskey glp=_git_log_prettily (git log --pretty=$1) $*
doskey gm=git merge $*
doskey gma=git merge --abort $*
doskey gmt=git mergetool --no-prompt $*
doskey gp=git push $*
doskey gpoat=git push origin --all $T git push origin --tags $*
doskey gr=git remote $*
doskey grb=git rebase $*
doskey grba=git rebase --abort $*
doskey grbc=git rebase --continue $*
doskey grbd=git rebase develop $*
doskey grbm=git rebase master $*
doskey grbs=git rebase --skip $*
doskey grbi=git rebase -i $*
doskey grh=git reset HEAD $*
doskey grhh=git reset HEAD --hard
doskey grmv=git remote rename $*
doskey grrm=git remote remove $*
doskey grset=git remote set-url $*
:: doskey grt=cd $(git rev-parse --show-toplevel || echo ".") $*
doskey grup=git remote update $*
doskey grv=git remote -v $*
doskey gsd=git svn dcommit $*
doskey gsps=git show --pretty = short --show-signature $*
doskey gsr=git svn rebase $*
doskey gss=git status -s $*
doskey gst=git status $*
doskey gsta=git stash save $*
doskey gstaa=git stash apply $*
doskey gstd=git stash drop $*
doskey gstl=git stash list $*
doskey gstp=git stash pop $*
doskey gsts=git stash show --text $*
doskey gsu=git submodule update $*
doskey gts=git tag -s $*
doskey gunignore=git update-index --no-assume-unchanged $*
:: doskey gunwip=git log -n 1 | grep -q -c "--wip--" $T git reset HEAD~1 $*
doskey gup=git pull --rebase $*
doskey gvt=git verify-tag $*
doskey gwch=git whatchanged -p --abbrev-commit --pretty = medium $*
:: doskey gwip=git add -A; git ls-files --deleted -z | xargs -r0 git rm; git commit -m "--wip--" $*
