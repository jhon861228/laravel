namespace :deploy do
  task :migrate do
    invoke "laravel:artisan", "migrate"
  end
end
