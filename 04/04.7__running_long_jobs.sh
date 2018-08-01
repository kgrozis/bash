#! /bin/bash

# Problem: Want to run a long job in background and expect shell to quit

# when you put a job in background it is still a child process of shell
# when shell quits it sends a hup (hangup) msg to all processes in shell
# this kills all processes

# 'nohup' cmd tells child processes to ignore hup signals
# can still kill job
# stdout will be redirected to hup.out file in cwd
nohup find / -name 'test' &