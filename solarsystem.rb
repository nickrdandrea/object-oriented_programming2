class System
  attr_reader :bodies
  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass()
    total = 0
    @bodies.each do |i|
      total += i.mass.to_i
    end
    total
  end
end

class Body
  attr_reader :name, :mass
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body
  attr_accessor :day, :year
  def initialize(day, year, name, mass)
    @day = day
    @year = year
    super(name, mass)
  end
end

class Star < Body
  attr_accessor :type, :name, :mass
  def initialize(type, name, mass)
    @type = type
    super(name, mass)
  end
end

class Moon < Body
  attr_accessor :month, :planet
  def initialize(month, planet, name, mass)
    @month = month
    @planet = planet
    super(name, mass)
  end
end

sol = System.new()
sun = Star.new("G-type","Sun",1000)
sol.add(sun)
earth = Planet.new(24, 365, "Earth", 100)
sol.add(earth)
moon = Moon.new(27, earth, "Moon", 10)
sol.add(moon)
puts "#{sol.total_mass}"
