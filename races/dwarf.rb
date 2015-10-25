require_relative 'race'
class Dwarf < RaceClass
  def initialize(subclass = false)
    super
    @constitution += 2
    @movement += 25
    @resistance = @resistance.push('poison')
    self.send(subclass) if subclass
  end

  def self.subclasses
    return 'hilldwarf, mountaindwarf'
  end

  def hilldwarf
    @wisdom += 1
    @toughness = 'hit point max +1 per level'
  end

  def mountaindwarf
    @strength += 2
  end
end
