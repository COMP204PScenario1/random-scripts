#!/usr/bin/expect
spawn pg_dump -C -h studtbickers-p.cs.ucl.ac.uk -U todo_list_app todo_list | gzip -c > backup.gz

send "todo_list\r"

