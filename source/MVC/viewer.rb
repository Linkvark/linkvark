class Viewer
  class << self
    def welcome
    puts "  ____  _     _ _   _            ____                   _      "
    puts " / ___|| |__ (_) |_| |_ _   _   / ___| ___   ___   __ _| | ___ "
    puts " \\___ \\| '_ \\| | __| __| | | | | |  _ / _ \\ / _ \\ / _` | |/ _ \\"
    puts "  ___) | | | | | |_| |_| |_| | | |_| | (_) | (_) | (_| | |  __/"
    puts " |____/|_| |_|_|\\__|\\__|\\__, |  \\____|\\___/ \\___/ \\__, |_|\\___|"
    puts "                        |___/                     |___/        "


      print "Welcome to Shitty Google!"
      puts ""
    end

    def prompt_user_option
      puts "Please type in the keyword you would like to search:"
      puts "Or type q to quit."
      puts ""
    end

    def quit
      puts "Thanks for trying Shitty Google"
    end

    def getting_links(keyword)
      print "Thanks. Getting you some links from Google searching #{keyword}"
      puts ""
    end


    def introduce_links(links_array)
      puts "Here are the search links!"
      links_array.each do |link|
        puts "#{links_array.index(link) + 1}. #{link.to_s[7..-1]}"
        `open #{link.to_s[7..-1]}`
      end

    end


  end
end