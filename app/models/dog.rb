class Dog
  
  attr_accessor :name, :breed, :age
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    self.save
  end
  
  def save
    self.class.all << self if !self.class.all.include?(self)
  end

end