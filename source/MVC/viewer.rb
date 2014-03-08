class Viewer
  class << self
    def welcome
      puts " _     _       _                     _    "
      puts "| |   (_)     | |                   | |   "
      puts "| |    _ _ __ | | ____   ____ _ _ __| | __"
      puts "| |   | | '_ \\| |/ /\\ \\ / / _` | '__| |/ /"
      puts "| |___| | | | |   <  \\ V / (_| | |  |   < "
      puts "\\_____/_|_| |_|_|\\_\\  \\_/ \\__,_|_|  |_|\\_\\"
      print "Welcome to Linkvark!"
      puts ""
    end

    def prompt_user_option
      puts "Please type in the keyword you would like to search:"
      puts "Or type q to quit."
      puts ""
    end

    def quit
      puts "Thanks for trying Linkvark"
    end

    def getting_links(keyword)
      print "Thanks. Getting you some links from Google searching #{keyword}"
      puts ""
    end


    def introduce_links(links_array)
      puts "Here are the search links!"
      links_array.each do |link|
        puts "#{links_array.index(link) + 1}. #{link.to_s}"
        `open #{link.to_s}`
      end

    end


  end
end