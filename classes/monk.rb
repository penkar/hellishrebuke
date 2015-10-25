require_relative 'class'
class Monk < Classes
  def initialize(skill1, skill2)
    super
    hash = {acrobatics: true, athletics: true, history: true, insight: true, religion: true, stealth: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return hash = "acrobatics, athletics, history, insight, religion, stealth"
  end
end
#hash = {acrobatics: true, athletics: true, history: true, insight: true, religion: true, stealth: true}
#"acrobatics, animal_handling, arcana, athletics, deception, history, insight, intimidation, investigation, medicine, nature, perception, performance, persuasion, religion, sleight_of_hand, stealth, survival"
