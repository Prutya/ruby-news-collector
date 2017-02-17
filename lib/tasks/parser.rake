namespace :parser do
  WEBSITE = 'https://news.ycombinator.com'

  desc "parses <number> pages from #{WEBSITE}"
  task :parse, [:number] => :environment do |_, args|
    
  end

end
