require_relative 'class'
class Druid < Classes
  def initialize(skill1, skill2, null = false, null2 = false)
    super
    hash = {animal_handling: true, arcana: true, insight: true, medicine: true, nature: true, perception: true, religion: true, survival: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "Choose 2 skills from: animal_handling, arcana, insight, medicine, nature, perception, religion, and survival"
  end
end
