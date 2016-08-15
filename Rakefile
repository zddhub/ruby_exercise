namespace :test do
  task :numbers_to_words do
    ruby "test_num_to_words.rb"
  end

  task :all => [:numbers_to_words]
end

task test: %w[test:all]
task default: :test
