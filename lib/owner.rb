require 'pry'
class Owner
  # code goes here
  @@all = []
attr_reader :species, :name
attr_accessor :pets

  def self.all
    @@all
  end

  def initialize (species="I am a human")
    @species = species
    @@all << self
      @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def say_species
    "I am a #{@species}."
  end

  def name= (name)
    @name = name
  end

  def pets
  @pets
end

  def buy_fish(name)
    fish = Fish.new(name)
    # binding.pry
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    # binding.pry
    @pets[:cats] << cat
  end

  def buy_dog(name)
   dog = Dog.new(name)
    # binding.pry
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |doge|
      doge.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |kitty|
      kitty.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |key, value|
      value.each do |pet|
        pet.mood = "nervous"
      end
    end
      @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all = []
    self.count
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
end

end
