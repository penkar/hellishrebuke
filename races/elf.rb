require_relative 'race'
class Elf < RaceClass
  def initialize(subclass = false)
    super
    @dexterity += 2
    @speed += 30
    @vision = 'superior dark'
    self.send(subclass) if subclass
  end

  def self.subclasses
    return 'highelf, woodelf, drow, darkelf'
  end

  def highelf
    @intelligence += 1
  end

  def woodelf
    @wisdom += 2
    @speed = 35
    @stealth = 'Mask of the Wind'
  end

  def darkelf
    @charisma += 1
    @vision = 'superior darkvision'
    @speed = 35
  end

  def drow
    @charisma += 1
    @vision = 'superior darkvision'
    @speed = 35
  end
end
