require_relative 'class'
class Fighter < Classes
  def initialize(skill1, skill2)
    super
    hash = {acrobatics: true, animal_handling: true, athletics: true, history: true, insight: true, intimidation: true, perception: true, survival: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "acrobatics, animal_handling, athletics, history, insight, intimidation, perception, survival"
  end
end