

class NewsSpider < Kimurai::Base
  @name = 'news_spider'
  @engine = :mechanize

  def self.process(url)
    @start_urls = [url]
    self.crawl!
  end

  def parse(response, url:, data: {})
    headlines = response.xpath("//tr[@class='athing']")


    headlines.each do |news|
      item = {}
      item[:title] = news.css('a.storylink')&.text&.squish
      item[:link] = news.css('a.storylink')&.attribute('href')&.value

      # byebug
      News.where(item).first_or_create
    end
  end
end