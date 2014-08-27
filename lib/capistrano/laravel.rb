require "capistrano/composer"
require "capistrano/file-permissions"
require "capistrano/laravel/artisan"
require "capistrano/laravel/laravel"

namespace :load do
  task :defaults do
    load 'capistrano/laravel/defaults.rb'
  end
end
