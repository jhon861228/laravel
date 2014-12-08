set :laravel_roles, :all
set :laravel_path, "./"
set :laravel_artisan_flags, "--env=production"
set :laravel_server_user, "www-data"
set :laravel_server_group, "www-data"
set :laravel_server_chmod_mode, "0777"

# fix bug in capistrano-file-permissions
set :linked_dirs, []

set :file_permissions_paths, [
  'app/storage',
  'app/storage/cache',
  'app/storage/logs',
  'app/storage/meta',
  'app/storage/sessions',
  'app/storage/views'
]
set :file_permissions_users, [fetch(:laravel_server_user)]
set :file_permissions_group, [fetch(:laravel_server_group)]
set :file_permissions_chmod_mode, [fetch(:laravel_server_chmod_mode)]