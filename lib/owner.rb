class Owner
  attr_accessor :name

  @@all = []

  def self.all
    @@all.dup.freeze
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
    puts "I am a #{species}."
  end 

  def pets 
    @pets 
  end
end