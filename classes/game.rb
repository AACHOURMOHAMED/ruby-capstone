require_relative 'item'
require 'date'

class Game < Item
  attr_reader :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date)
    super(publish_date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && @last_played_at < Date.today - 365
  end
end
