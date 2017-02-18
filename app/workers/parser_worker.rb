require 'rubygems'
require 'rest-client'

class ParserWorker
  include Sidekiq::Worker

  def perform(number)
    number = number.to_i

    number.times do |i|
      page_number = i + 1
      page_url = "https://news.ycombinator.com/news?p=#{page_number}"

      page = Nokogiri::HTML(RestClient.get(page_url))
      posts = []

      page.css('tr.athing').each do |node|
        website_id = node.attr('id').to_i
        anchor = node.css('td a.storylink')
        url = anchor.attr('href')
        title = anchor.text
        author = node.next_element.css('td a.hnuser').text

        posts << { website_id: website_id, url: url, title: title, author: author }
      end

      break if posts.length < 1

      posts.each do |post|
        post_exists = Post.exists?(website_id: post[:website_id])

        Post.create!(post) unless post_exists
      end
    end
  end
end
