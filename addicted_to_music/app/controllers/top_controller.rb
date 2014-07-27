require 'open-uri'
require 'nokogiri'

class TopController < ApplicationController
  def index
  end

  def crawl
    # crawl_google
    crawl_hatena
    crawl_qiita
  end

  def crawl_google
    open('http://www.google.com')
  end

  def crawl_hatena
    url = 'http://hatenablog.com/'

    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end

    @crawl_hatena = Nokogiri::HTML.parse(html, nil, charset)
    @entry_list = @crawl_hatena.xpath('//a[@class="entry-title"]')

  end

  def crawl_qiita
    url = 'https://qiita.com/tags'

    charset = nil
    html = open(url) do |f|
      charset = f.charset
      f.read
    end

    @crawl_qiita = Nokogiri::HTML.parse(html, nil, charset)
    @row = @crawl_qiita.xpath('//div[@class="tag-index-list"]').xpath('.//a')
  end
end
