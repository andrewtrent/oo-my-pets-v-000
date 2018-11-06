class Dog
  attr_accessor :mood

  def initialize(name)
    new_cat = Dog.new
    @name = name
    @mood = "nervous"

  end

  def name
    @name.dup.freeze
  end
end
