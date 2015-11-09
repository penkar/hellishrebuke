require_relative 'class'
class Ranger < Classes
  def initialize(skill1, skill2, skill3, null = false)
    super
    hash = {animal_handling: true, athletics: true, insight: true, investigation: true, nature: true, perception: true, stealth: true, survival: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
    @skills.push(skill3.to_sym) if hash[skill3.to_sym]
  end

  def self.skills
    return "Choose 3 skills from: animal_handling, athletics, insight, investigation, nature, perception, stealth, and survival"
  end
end
