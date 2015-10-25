require_relative 'race'
class Halfelf < RaceClass
  def initialize(subclass = false, ability1 = false, ability2 = false)
    super
    pt1, pt2, pt3 = 2, 1, 1
    pt2, pt3 = 0,2 if ability1 == ability2
    self.send("#{ability1}=",pt2)
    self.send("#{ability2}=",pt3)
    @charisma += pt1
    @movement = 30
    @vision = 'superior dark'

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
