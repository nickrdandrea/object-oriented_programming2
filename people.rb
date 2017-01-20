class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end

  def greeting
    puts "Hi my name is #{@name}."
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Objedct."
  end
end

chris = Instructor.new("Chris")
cristina = Student.new("Cristina")

chris.greeting
chris.teach

cristina.greeting
cristina.learn

#cristina.teach does not work because neither the Student nor Person classes contain the method.
