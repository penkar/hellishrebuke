require_relative 'class'
class Sorcerer < Classes
  def initialize(skill1, skill2, null = false, null2 = false)
    super
    hash = {arcana: true, deception: true, insight: true, intimidation: true, persuasion: true, religion: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "Choose 2 skills from: arcana, deception, insight, intimidation, persuasion, and religion"
  end
end
