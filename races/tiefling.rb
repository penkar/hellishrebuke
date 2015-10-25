require_relative 'race'
class Tiefling < RaceClass
  def initialize(subclass = false)
    super
    @intelligence += 1
    @charisma += 2
    @movement += 30
    @vision = 'superior dark'
    @resistance = @resistance.push('fire')
  end

  def self.subclasses
    return 'None'
  end
end
