class Owner
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.size
  end

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def species
    @species.dup.freeze
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
  end

#  def buy_fish(name)
#    new_fish = Fish.new(name)
#    self.pets[:fishes] << new_fish
#  end

  def buy_critter(critter, symbol, name)
    new_critter = critter.new(name)
    self.pets[symbol] << new_critter
  end

  def buy_fish(name)
    buy_critter(Fish, :fishes, name)
  end

  def buy_dog(name)
    buy_critter(Dog, :dogs, name)
  end

  def buy_cat(name)
    buy_critter(Cat, :cats, name)
  end

  def make_critters_mood(symbol, mood)
    self.pets[symbol].each {|pet| pet.mood = mood}
  end

  def walk_dogs
    make_critters_mood(:dogs, "happy")
  end

  def play_with_cats
    make_critters_mood(:cats, "happy")
  end

  def feed_fish
    make_critters_mood(:fishes, "happy")
  end

  def sell_pets
    self.pets.each {|critters| make_critters_mood(critters, "nervous")}
    self.pets.each {|critters| critters.values.clear}
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end


end
