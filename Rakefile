namespace :test do
  task :fizz_buzz do
    ruby "test/fizz_buzz_test.rb"
  end

  task :auto_wrap do
    ruby "test/soft_wrap_test.rb"
  end

  task :numbers_to_words do
    ruby "test/num_to_words_test.rb"
  end

  task :all => [:fizz_buzz, :auto_wrap, :numbers_to_words]
end

task test: %w(test:all)
task default: :test
