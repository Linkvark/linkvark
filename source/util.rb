#require 'net/http'
require 'open-uri'
require 'mechanize'

class Page
   attr_reader :title, :links, :keyword, :fetch
  def initialize(keyword)
    @keyword = keyword
  end

  
  def fetch!
    @agent = Mechanize.new
    @page = @agent.get('http://www.google.com/')

    @google_form = @page.form_with(:name => "f")
    @google_form.field_with(:name => "q").value = @keyword.to_s     
    @search_results = @agent.submit(@google_form)
  end
  
  def links
    @sitesurl_array = []
    (@search_results/"li.g").each do |result|
      @sitesurl_array << (result/"a").first.attribute('href') if result.attribute('class').to_s == 'g'
    end   

    @sitesurl_array

  end
end


