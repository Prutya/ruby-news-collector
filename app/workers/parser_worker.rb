class ParserWorker
  include Sidekiq::Worker

  def perform(number)
    puts number
  end
end
