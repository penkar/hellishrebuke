require_relative 'class'
class Ranger < Classes
  def initialize(skill1, skill2, skill3)
    super
    hash = {animal_handling: true, athletics: true, insight: true, investigation: true, nature: true, perception: true, stealth: true, survival: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
    @skills.push(skill3.to_sym) if hash[skill3.to_sym]
  end

  def self.skills
    return "animal_handling, athletics, insight, investigation, nature, perception, stealth, survival"
  end
end