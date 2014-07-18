require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Youtube < ActiveRecord::Base

  URL = 'http://gdata.youtube.com/feeds/api/videos?vq='

  def self.search(keyword)
    keywords = URI.encode(keyword)
    options = '&orderby=published'

    uri = URI(URL + keywords + options)

    doc = Nokogiri::XML(uri.read)

    articles = []

    doc.search('entry').each do |entry|
      article = Article.new
      article.title = entry.search('title').text
      article.url = entry.xpath('media:group/media:player').first['url']
    end

    return articles
  end

end
