namespace :test do
  task :fizz_buzz do
    ruby "test_fizz_buzz.rb"
  end

  task :auto_wrap do
    ruby "test_soft_wrap.rb"
  end

  task :numbers_to_words do
    ruby "test_num_to_words.rb"
  end

  task :all => [:fizz_buzz, :auto_wrap, :numbers_to_words]
end

task test: %w[test:all]
task default: :test
