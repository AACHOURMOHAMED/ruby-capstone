class Item
  attr_accessor :genre, :author, :label, :publish_date
  attr_reader :id, :archived

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = false
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  def add_genre(genre)
    genre.items << self unless genre.items.include?(self)
    @genre = genre
  end

  def add_label(label)
    label.items << self unless label.items.include?(self)
    @label = label
  end

  private

  def can_be_archived?
    # return true if publish_date is older than 10 years
    return true if @publish_date < Date.today - 3650
  end
end
