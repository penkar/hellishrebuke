require_relative 'race'
class Human < RaceClass
  def initialize(subclass = false, ability1 = false, ability2 = false)
    super
    @strength = 1
    @dexterity = 1
    @wisdom = 1
    @intelligence = 1
    @constitution = 1
    @charisma = 1
    @movement += 30
    self.send(subclass) if false #subclass
  end

  def self.subclasses
    return 'none'
  end
end
