require_relative 'race'
class Gnome < RaceClass
  def initialize(subclass = false)
    super
    @intelligence += 2
    @movement += 25
    @vision = 'superior dark'
    self.send(subclass) if subclass
  end

  def self.subclasses
    return 'forestgnome, rockgnome'
  end

  def forestgnome
    @dexterity += 1
  end

  def rockgnome
    @constitution += 1
  end
end
