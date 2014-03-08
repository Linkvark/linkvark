class Search < ActiveRecord::Base
has_many :links

 def fetch!
    agent = Mechanize.new
    page = agent.get('http://www.google.com/')

    google_form = page.form_with(:name => "f")
    google_form.field_with(:name => "q").value = keyword.to_s
    @search_results = agent.submit(google_form)
    get_links
  end

  def get_links

    (@search_results/"li.g").each do |result|
      url = (result/"a").first.attribute('href')
      url = url.value[7..-1]
      self.links << Link.create({link_url: url}) if result.attribute('class').to_s == 'g'
    end

  end

  def give_links
    self.links.map {|link| link.link_url }
  end

end

