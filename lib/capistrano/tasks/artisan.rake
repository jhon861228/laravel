namespace :laravel do
  desc "Execute a provided artisan command"
  task :artisan, :command_name do |t, args|
    # ask only runs if argument is not provided
    ask(:cmd, "list")
    command = args[:command_name] || fetch(:cmd)
    artisan_path = fetch(:laravel_path) + "artisan"

    on roles fetch(:laravel_roles) do
      within release_path do
        execute :php, artisan_path, command, *args.extras, fetch(:laravel_artisan_flags)
      end
    end
  end
end
