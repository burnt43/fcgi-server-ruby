require 'rake/testtask'

namespace :fcgi_server do
  namespace :test do
    Rake::TestTask.new(:run) do |t|
      t.test_files = FileList['./test/*_test.rb']
      t.verbose = false
    end
  end
end
