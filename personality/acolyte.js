require_relative 'personality'
class Acolyte < Personality
  def initialize(skill1, skill2, null = false, null2 = false)
    super
    hash = {animal_handling: true, athletics: true, intimidation: true, nature: true, perception: true, survival: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "Choose 2 skills from: animal_handling, athletics, intimidation, nature, perception, and survival"
  end
end
