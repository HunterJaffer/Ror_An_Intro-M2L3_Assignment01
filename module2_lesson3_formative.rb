class Person
  attr_accessor :first_name,:last_name

  @@people = []

  def initialize(x,y)#should take 2 parameters for first_name and last_name
    self.first_name = x
  	self.last_name = y
    @@people << self

  end

  def self.search(last_name)
    @@people.select{|person| person.last_name ==last_name}
  end

  def to_s
    "#{first_name} #{last_name}"
  end
end

p1 = Person.new("John", "Smith")
p2 = Person.new("John", "Doe")
p3 = Person.new("Jane", "Smith")
p4 = Person.new("Cool", "Dude")

puts Person.search("Smith")

# Should print out
# => John Smith
# => Jane Smith
