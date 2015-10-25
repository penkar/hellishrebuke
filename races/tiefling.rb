require_relative 'race'
class Tiefling < RaceClass
  def initialize(subclass = false)
    super
    @intelligence += 1
    @charisma += 2
    @movement += 30
    @vision = 'superior dark'
    @resistance = @resistance.push('fire')
    self.send(subclass) if subclass
  end

  def self.subclasses
    return 'lightfoot, stout'
  end

  def lightfoot
    @charisma += 1
    @stealth = 'naturally stealthy'
  end

  def stout
    @constitution += 1
    @toughness = 'Stout Resilience'
  end
end
