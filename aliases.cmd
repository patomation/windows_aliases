@echo off

doskey clear=cls

doskey ls=dir
doskey ll=dir

doskey gst=git status
doskey ga=git add $*
doskey gc=git commit $*
doskey gp=git push

doskey touch=copy nul $* > nul
