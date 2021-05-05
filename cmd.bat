@echo off
doskey cd = cd /d $* ^&^& cmd_title
doskey git = git $* ^&^& cmd_title

doskey pwd = cd
cmd_title