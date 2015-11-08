require_relative 'class'
class Worlock < Classes
  def initialize(skill1, skill2)
    super
    hash = {arcana: true, deception: true, history: true, intimidation: true, investigation: true, nature: true, religion: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "Choose 2 skills from: arcana, deception, history, intimidation, investigation, nature, and religion"
  end
end
