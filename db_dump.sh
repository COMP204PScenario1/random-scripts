
export PGPASSWORD="todo_list_app"
pg_dump -C -Fc -h studtbickers-p.cs.ucl.ac.uk -U todo_list_app todo_list | gzip -c > /home/localuser/$(date +"%Y-%m-%d-%H-%M-%S").gz

