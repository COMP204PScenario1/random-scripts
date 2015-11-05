export PGPASSWORD="todo_list_app"
gunzip -c $1 | pg_restore -c -h studtbickers-p.cs.ucl.ac.uk -U todo_list_app -d todo_list
