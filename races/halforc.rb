require_relative 'race'
class Halforc < RaceClass
  def initialize(subclass = false)
    super
    @strength += 2
    @constitution += 1
    @movement += 30
    @vision = 'Superior darkvision'
    @skills = ['intimidation']
  end
end
