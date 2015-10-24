require_relative 'race'
class Dwarf < RaceClass
  def initialize(subclass = false)
    super
    @constitution += 2
    @speed += 25
    self.send(subclass) if subclass
  end

  def subclasses
    return 'hilldwarf, mountaindwarf'
  end

  def hilldwarf
    @wisdom += 1
  end

  def mountaindwarf
    @strength += 2
  end
end
