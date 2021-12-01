## Delete Logs

### delete logs for oracle DB , and using xargs because rm -rf * can't delete huge files because the maximum length of the command line is set by the system and is sometimes 128KiB. If you need to remove many, many files, you need to call rm more than once, using xargs:
