namespace :deploy do
  task :optimize do
    invoke "laravel:artisan", "optimize"
  end

  after :updated, 'deploy:set_permissions:acl' do
    arr = fetch(:file_permissions_paths)
    laravel_path = fetch(:laravel_path)
    set :file_permissions_paths, arr.map { |a| laravel_path + a }
    invoke "deploy:set_permissions:acl"
  end

  after :updated, "deploy:migrate"
  after :updated, "deploy:optimize"
end
