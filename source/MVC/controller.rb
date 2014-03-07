
require 'open-uri'
require 'mechanize'
require_relative 'search'
require_relative 'link'
require_relative 'viewer'

class Browser
  def run!
    Viewer.welcome
    list_options
 end

 def list_options
    Viewer.prompt_user_option
    get_user_input
    do_user_option
 end

 def do_user_option
    case @input
        when "q"
            quit_program
        else
            execute_url
            list_options
    end
 end

 def quit_program
    Viewer.quit
 end

  def execute_url
    @current_page = Search.new(@input)
    Viewer.getting_links(@input)
    fetch_links
  end


  def fetch_links
    @current_page.fetch!
    print_title_links
  end

  def print_title_links
    Viewer.introduce_links(@current_page.give_links)
  end

  def get_user_input
    @input = gets.chomp
  end

end

Browser.new.run!

# Run the browser
    # Display a prompt for a user
    # Parse their input
    # Display useful results by instantiating
    #   a new Page and calling methods on it.

    # Questions:
    #  1. How can a user quit the browser gracefully?
    #  2. How can a user ask for help, i.e., how do they know what commands are available to them?