require_relative 'race'
class Halfelf < RaceClass###TODO 2 proficiencies
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
    return 'input 2 abilities'
  end
end
