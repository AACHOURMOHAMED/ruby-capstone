#!/usr/bin/env ruby
require_relative 'app'

class Main
  def initialize
    @app = Application.new
  end

  def menu
    $stdout.sync = true
    puts 'Welcome to the Catalog of many things console application'
    puts "
    Please choose an option from the list by entering a number:\n
    1 - List all books
    2 - Add a book
    3 - List all games
    4 - Add a game
    5 - List all music albums
    6 - Add a music album
    7 - List all genres 
    8 - List all labels 
    9 - List all authors
    10 - Exit "
  end

  def prompt
    menu
    choice = gets.chomp.to_i
    options(choice)
    prompt until @choice == 10
  end

  def options(choice)
    case choice
    when 1
      @app.list_all_books
    when 2
      @app.add_book
    when 3
      @app.list_all_games
    when 4
      @app.add_game
    when 5
      @app.list_all_music_albums
    when 6
      @app.add_music_album
    when 7
      @app.list_all_genres
    when 8
      @app.list_all_labels
    when 9
      @app.list_all_authors
    else
      exit
    end
  end

end 

app = Main.new
app.prompt