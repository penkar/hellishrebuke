require_relative 'class'
class Barbarian < Classes
  def initialize(skill1, skill2)
    super
    hash = {animal_handling: true, athletics: true, intimidation: true, nature: true, perception: true, survival: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "Choose 2 skills from: animal_handling, athletics, intimidation, nature, perception, and survival"
  end
end
#hash = {acrobatics: true, animal_handling: true, arcana: true, athletics: true, deception: true, history: true, insight: true, intimidation: true, investigation: true, medicine: true, nature: true, perception: true, performance: true, persuasion: true, religion: true, sleight_of_hand: true, stealth: true, survival: true}
#"acrobatics, animal_handling, arcana, athletics, deception, history, insight, intimidation, investigation, medicine, nature, perception, performance, persuasion, religion, sleight_of_hand, stealth, survival"
