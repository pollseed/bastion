require 'open-uri'
require 'nokogiri'

class TopController < ApplicationController
  def index
    map1 = ["test","test1","test2"]
    map2 = ["http://test.com","http://test.com1","http://test.com2"]
    map3 = ["7/20","7/21","7/22"]
    @map4 = [map1, map2, map3]
  end

  def crawl
    # crawl_google
    crawl_hatena
    crawl_qiita
    # api_qiita_mySubmit
  end

  # --crawler --

  #
  # def crawl_google
  #   open('http://www.google.com')
  # end

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



  # def api_qiita_mySubmit
  #   url = 'https://qiita.com/api/v1/users/pollseed/items'
  #
  #   charset = nil
  #   html = open(url) do |f|
  #     charset = f.charset
  #     f.read
  #   end
  #
  #   @api_qiita_mySubmit = Nokogiri::HTML.parse(html, nil, charset)
  #   json_data = JSON.parse(api_qiita_mySubmit)
  #   @submitList = json_data['tags']
  # end
end
