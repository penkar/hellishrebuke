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
    return 'Please enter 2 extra abilities.'
  end
end
