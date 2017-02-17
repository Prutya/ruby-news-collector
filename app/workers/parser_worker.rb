class ParserWorker
  include Sidekiq::Worker

  def perform(number)
  end
end
