namespace :parser do
  desc "starts ParserWorker passing :number into it"
  task :parse, [:number] => :environment do |_, args|
    ParserWorker.perform_async(args[:number])
  end

end
