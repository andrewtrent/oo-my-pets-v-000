class Fish
  attr_accessor :mood

  def initialize(name)
    new_cat = Fish.new
    @name = name
    @mood = "nervous"

  end

  def name
    @name.dup.freeze
  end
end
