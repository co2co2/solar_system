class System
  def initialize
    @bodies = []
  end

  def add(body)
    @bodies << body
  end

  def total_mass
    total = 0
    @bodies.each {|b| total += b.mass}
    return total
  end
end

class Body < System
  def initialize (name, mass)
    @name = name
    @mass = mass
  end

  def name
    @name
  end

  def mass
    @mass
  end

end
class Planets < Body
  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

end

class Stars < Body
  def initialize (name, mass, type)
    super(name, mass)
    @type = type
  end
end

class Moons < Body
  def initialize (name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end
end


coco = System.new
sun = Stars.new('Sun', 1989100, 'G-type')
earth = Planets.new('Earth', 597.2, 365, 24)
moon = Moons.new('EarthMoon', 7.3, 28, 'earth' )
coco.add (sun)
coco.add(earth)
coco.add(moon)
puts coco.total_mass
