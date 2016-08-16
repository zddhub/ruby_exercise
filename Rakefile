namespace :test do
  desc 'test fizz_buzz'
  task :fizz_buzz do
    ruby "test/fizz_buzz_test.rb"
  end

  desc 'test auto_wrap'
  task :auto_wrap do
    ruby "test/soft_wrap_test.rb"
  end

  desc 'test numbers_to_words'
  task :numbers_to_words do
    ruby "test/num_to_words_test.rb"
  end

  desc 'test all'
  task :all => [:fizz_buzz, :auto_wrap, :numbers_to_words]
end

desc 'test default'
task test: %w(test:all)

task default: :test
