require 'rubygems'
require 'nokogiri'
require 'open-uri'

class Youtube < ActiveResource::Base

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
      article.youtube_video = entry.xpath('media:group/media:player').first['url'].scan(/¥bv=¥w*/)[0].delete('v=')
      article.push(article)
    end

    return articles
  end

end
