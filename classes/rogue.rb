require_relative 'class'
class Rogue < Classes
  def initialize(skill1, skill2, skill3, skill4)
    super
    hash = {acrobatics: true, athletics: true, deception: true, insight: true, intimidation: true, investigation: true, perception: true, performance: true, persuasion: true, sleight_of_hand: true, stealth: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
    @skills.push(skill3.to_sym) if hash[skill3.to_sym]
    @skills.push(skill4.to_sym) if hash[skill4.to_sym]
  end

  def self.skills
    return "acrobatics, athletics, deception, insight, intimidation, investigation, perception, performance, persuasion, sleight_of_hand, stealth"
  end
end
