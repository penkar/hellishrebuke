require_relative 'race'
class Halfling < RaceClass
  def initialize(subclass = false)
    super
    @dexterity += 2
    @speed += 25
    self.send(subclass) if subclass
  end

  def subclasses
    return 'lightfoot, stout'
  end

  def lightfoot
    @charisma += 1
    @stealth = 'naturally stealthy'
  end

  def stout
    @constitution += 1
    @toughness = 'Stout Resilience  '
  end
end
