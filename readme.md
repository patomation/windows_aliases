# OhMyZsh Aliases for Windows
I'm a big fan of Oh My Zsh, when circumstances lead me to develop on windows instead of Mac and linux I found myself missing some of the shortcut commands for git and others. So I took all the commands from Oh My Zsh and ported them into a windows bash file as best I could. Now you can have all the git shortcusts such as gst, gb, gp, ga, gc and so on. One day I hope that Oh My Zsh could work for windows command line, especially the themes. But given my understanding it is not possible. So for now we get to have some of the same commands at least. 


# Usage
Edit `Command Prompt` shortcut. By right clicking and choosing `Properties`. Under the `Shortcut` tab edit the line `Target:` to include the path the alisases.cmd file. For example:
```
C:\WINDOWS\system32\cmd.exe /K C:\windows_aliases\aliases.cmd
```
Now whenever you open the CMD shortcut it will include your aliases.

Additionally there is an example shortcut that you can use if you put the repo directly in the `C:\` drive. This is in the shortcut folder. 


To try it out if you have just cloned it (to your home directory):

```shell
source ~/.oh-my-zsh/templates/zshrc.zsh-template
```

---


[Lovingly Borrowed from ohmyzsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet)

### Special Aliases to make DOS more windows like

| Alias  | Description                                     |
|:-------|:------------------------------------------------|
| ll     | list directory                                  |
| ls     | also list directory                             |
| touch  | create new tile                                 |
| ln     |                                                 |
| rm     | remove file                                     |
| rmr    | remove directory                                |
| cp     | copy file                                       |
| cpr    | copy directory                                  |
| mv     | move                                            |


## Directory

| Alias   | Command                               |
|:--------|:--------------------------------------|
| ..      | cd ..                                 |
| ...     | cd ../..                              |
| ....    | cd ../../..                           |
| .....   | cd ../../../..                        |

## Git

| Alias                  | Command                                                                           |
|:-----------------------|:----------------------------------------------------------------------------------|
| _g_                    | git                                                                               |
| _ga_                   | git add                                                                           |
| _gau_                  | git add --update (Also: "git add -u")                                             |
| _gaa_                  | git add --all                                                                     |
| _gapa_                 | git add --patch                                                                   |
| _gb_                   | git branch                                                                        |
| _gba_                  | git branch -a                                                                     |
| _gbd_                  | git branch -d                                                                     |
| _gbda_                 | git branch --no-color --merged \| command grep -vE "^(\\+\|\\\*\|\\s\*(master\|develop\|dev)\\s*$)" \| command xargs -n 1 git branch -d |
| _gbl_                  | git blame -b -w                                                                   |
| _gbnm_                 | git branch --no-merged                                                            |
| _gbr_                  | git branch --remote                                                               |
| _gbs_                  | git bisect                                                                        |
| _gbsb_                 | git bisect bad                                                                    |
| _gbsg_                 | git bisect good                                                                   |
| _gbsr_                 | git bisect reset                                                                  |
| _gbss_                 | git bisect start                                                                  |
| _gc_                   | git commit -v                                                                     |
| _gc!_                  | git commit -v --amend                                                             |
| _gca_                  | git commit -v -a                                                                  |
| _gca!_                 | git commit -v -a --amend                                                          |
| _gcan!_                | git commit -v -a --no-edit --amend                                                |
| _gcans!_               | git commit -v -a -s --no-edit --amend                                             |
| _gcam_                 | git commit -a -m                                                                  |
| _gcsm_                 | git commit -s -m                                                                  |
| _gcb_                  | git checkout -b                                                                   |
| _gcf_                  | git config --list                                                                 |
| _gcl_                  | git clone --recurse-submodules                                                    |
| _gclean_               | git clean -id                                                                     |
| _gpristine_            | git reset --hard && git clean -dffx                                               |
| _gcm_                  | git checkout master                                                               |
| _gcd_                  | git checkout develop                                                              |
| _gcmsg_                | git commit -m                                                                     |
| _gco_                  | git checkout                                                                      |
| _gcount_               | git shortlog -sn                                                                  |
| _gcp_                  | git cherry-pick                                                                   |
| _gcpa_                 | git cherry-pick --abort                                                           |
| _gcpc_                 | git cherry-pick --continue                                                        |
| _gcs_                  | git commit -S                                                                     |
| _gd_                   | git diff                                                                          |
| _gdca_                 | git diff --cached                                                                 |
| _gdct_                 | git describe --tags &#96;git rev-list --tags --max-count=1&#96;                   |
| _gds_                  | git diff --staged                                                                 |
| _gdt_                  | git diff-tree --no-commit-id --name-only -r                                       |
| _gdw_                  | git diff --word-diff                                                              |
| _gf_                   | git fetch                                                                         |
| _gfa_                  | git fetch --all --prune                                                           |
| _gfo_                  | git fetch origin                                                                  |
| _gg_                   | git gui citool                                                                    |
| _gga_                  | git gui citool --amend                                                            |
| _ggpnp_                | git pull origin $(current_branch) && git push origin $(current_branch)            |
| _ggpull_               | git pull origin $(current_branch)                                                 |
| _ggl_                  | git pull origin $(current_branch)                                                 |
| _ggpur_                | git pull --rebase origin $(current_branch)                                        |
| _ggu_                  | git pull --rebase origin $(current_branch)                                        |
| _glum_                 | git pull upstream master                                                          |
| _ggpush_               | git push origin $(current_branch)                                                 |
| _ggp_                  | git push origin $(current_branch)                                                 |
| _ggfl_                 | git push --force-with-lease origin <your_argument>/$(current_branch)              |
| _ggsup_                | git branch --set-upstream-to=origin/$(current_branch)                             |
| _gpsup_                | git push --set-upstream origin $(current_branch)                                  |
| _ghh_                  | git help                                                                          |
| _gignore_              | git update-index --assume-unchanged                                               |
| _gignored_             | git ls-files -v | grep "^[[:lower:]]"                                             |
| _git-svn-dcommit-push_ | git svn dcommit && git push github master:svntrunk                                |
| _gk_                   | \gitk --all --branches                                                            |
| _gke_                  | \gitk --all $(git log -g --pretty=%h)                                             |
| _gl_                   | git pull                                                                          |
| _glg_                  | git log --stat                                                                    |
| _glgg_                 | git log --graph                                                                   |
| _glgga_                | git log --graph --decorate --all                                                  |
| _glgm_                 | git log --graph --max-count=10                                                    |
| _glgp_                 | git log --stat -p                                                                 |
| _glo_                  | git log --oneline --decorate                                                      |
| _glog_                 | git log --oneline --decorate --graph                                              |
| _glol_                 | git log --graph --pretty=\\'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\\' |
| _glola_                | git log --graph --pretty=\\'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset\\' --all |
| _glp_                  | _git_log_prettily (Also: "git log --pretty=$1")                                   |
| _gm_                   | git merge                                                                         |
| _gma_                  | git merge --abort                                                                 |
| _gmom_                 | git merge origin/master                                                           |
| _gmt_                  | git mergetool --no-prompt                                                         |
| _gmtvim_               | git mergetool --no-prompt --tool=vimdiff                                          |
| _gmum_                 | git merge upstream/master                                                         |
| _gp_                   | git push                                                                          |
| _gpd_                  | git push --dry-run                                                                |
| _gpoat_                | git push origin --all && git push origin --tags                                   |
| _gpu_                  | git push upstream                                                                 |
| _gpv_                  | git push -v                                                                       |
| _gr_                   | git remote                                                                        |
| _gra_                  | git remote add                                                                    |
| _grb_                  | git rebase                                                                        |
| _grba_                 | git rebase --abort                                                                |
| _grbc_                 | git rebase --continue                                                             |
| _grbd_                 | git rebase develop                                                                |
| _grbi_                 | git rebase -i                                                                     |
| _grbm_                 | git rebase master                                                                 |
| _grbs_                 | git rebase --skip                                                                 |
| _grh_                  | git reset (Also: "git reset HEAD")                                                |
| _grhh_                 | git reset --hard (Also: "git reset HEAD --hard")                                  |
| _grmv_                 | git remote rename                                                                 |
| _grrm_                 | git remote remove                                                                 |
| _grs_                  | git restore                                                                       |
| _grset_                | git remote set-url                                                                |
| _grt_                  | cd $(git rev-parse --show-toplevel &#124;&#124; echo ".")                         |
| _gru_                  | git reset --                                                                      |
| _grup_                 | git remote update                                                                 |
| _grv_                  | git remote -v                                                                     |
| _gsb_                  | git status -sb                                                                    |
| _gsd_                  | git svn dcommit                                                                   |
| _gsi_                  | git submodule init                                                                |
| _gsps_                 | git show --pretty=short --show-signature                                          |
| _gsr_                  | git svn rebase                                                                    |
| _gss_                  | git status -s                                                                     |
| _gst_                  | git status                                                                        |
| _gsta_                 | git stash save                                                                    |
| _gstaa_                | git stash apply                                                                   |
| _gstd_                 | git stash drop                                                                    |
| _gstl_                 | git stash list                                                                    |
| _gstp_                 | git stash pop                                                                     |
| _gstc_                 | git stash clear                                                                   |
| _gsts_                 | git stash show --text                                                             |
| _gsu_                  | git submodule update                                                              |
| _gts_                  | git tag -s                                                                        |
| _gunignore_            | git update-index --no-assume-unchanged                                            |
| _gunwip_               | git log -n 1 &#124; grep -q -c "\-\-wip\-\-" && git reset HEAD~1                  |
| _gup_                  | git pull --rebase                                                                 |
| _gupv_                 | git pull --rebase -v                                                              |
| _gvt_                  | git verify-tag                                                                    |
| _gwch_                 | git whatchanged -p --abbrev-commit --pretty=medium                                |
| _gwip_                 | git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify --no-gpg-sign -m "--wip-- \[skip ci\]" |
