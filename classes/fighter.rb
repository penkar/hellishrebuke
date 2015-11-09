require_relative 'class'
class Fighter < Classes
  def initialize(skill1, skill2, null = false, null2 = false)
    super
    hash = {acrobatics: true, animal_handling: true, athletics: true, history: true, insight: true, intimidation: true, perception: true, survival: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "Choose 2 skills from: acrobatics, animal_handling, athletics, history, insight, intimidation, perception, and survival"
  end
end
