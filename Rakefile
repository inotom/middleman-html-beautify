require "bundler/gem_tasks"

task :default => [:test]

task :test => [:cucumber]

require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:cucumber, 'Run features that should pass') do |task|
  ENV['TEST'] = 'true'
  task.cucumber_opts = '--color --strict --format pretty'
end
