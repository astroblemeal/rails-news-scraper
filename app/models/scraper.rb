require 'selenium-webdriver'
require 'pry'
require 'csv'
require 'json'


  class scraper
    @driver = Selenium::WebDriver.for :firefox
    @driver.get('https://news.ycombinator.com')

    def scrape
      @elements = driver.find_elements(class: 'athing')
      @site_data = elements.each_with_object([]) do |item, obj|
      obj << {
        title: item.find_element(class: 'storylink').text,
        url: item.find_element(class: 'storylink')['href']
        }
      end
    end
  end
  # def to_s; .to_s; end


