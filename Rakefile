# #!/usr/bin/env rake
# require "bundler/gem_tasks"
# require "rake/testtask"

# Rake::TestTask.new do |t|
#   t.libs << "lib"
#   t.test_files = FileList['test/*_test.rb']
# end

# desc "Run tests"
# task :default => :test

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  t.pattern = FileList['spec/**/*_spec.rb'].exclude('spec/remote/**/*')
end

namespace :spec do
  desc "Run remote specs"
  RSpec::Core::RakeTask.new(:remote) do |t|
    t.pattern = FileList['spec/remote/**/*_spec.rb']
  end
end

task :default => :spec