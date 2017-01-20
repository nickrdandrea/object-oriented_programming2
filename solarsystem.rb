class System
  attr_reader :bodies
  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass(mass)
    total = 0
    @bodies.each do |i|
      total += @bodies[i]
    end
    total
  end
end

class Body
  attr_reader: :name, :mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body
  attr_reader :day, :year
  def initialize(day, year)
    @day = day
    @year = year
  end
end

class Star < Body
  attr_accessor :type
  def initialize(type)
    @type = type
  end
end

class Moon < Body
  attr_accessor :month, :planet
  def initialize(month, planet)
    @month = month
    @planet = planet
  end
end
