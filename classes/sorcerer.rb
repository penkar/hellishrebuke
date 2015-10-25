require_relative 'class'
class Sorcerer < Classes
  def initialize(skill1, skill2)
    super
    hash = {arcana: true, deception: true, insight: true, intimidation: true, persuasion: true, religion: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "arcana, deception, insight, intimidation, persuasion, religion"
  end
end
