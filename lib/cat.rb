class Cat
  attr_accessor :mood

  def initialize(name)
    new_cat = Cat.new
    @name = name
    @mood = "nervous"

  end

  def name
    @name.dup.freeze
  end
end
