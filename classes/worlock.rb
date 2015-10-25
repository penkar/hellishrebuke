require_relative 'class'
class Wizard < Classes
  def initialize(skill1, skill2)
    super
    hash = {arcana: true, deception: true, history: true, intimidation: true, investigation: true, nature: true, religion: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "arcana, deception, history, intimidation, investigation, nature, religion"
  end
end
