
export PGPASSWORD="todo_list_app"
pg_dump -C -h studtbickers-p.cs.ucl.ac.uk -U todo_list_app todo_list | gzip -c > $(date +"%Y-%m-%d-%H-%M-%S").gz

