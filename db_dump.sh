#!/usr/bin/expect
spawn sudo yum install expect

send "y\r"

send "y\r"

spawn pg_dump -C -h studtbickers-p.cs.ucl.ac.uk -U todo_list_app todo_list | gzip -c > backup.gz

send "todo_list\r"

