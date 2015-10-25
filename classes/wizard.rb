require_relative 'class'
class Wizard < Classes
  def initialize(skill1, skill2)
    super
    hash = {arcana: true, history: true, insight: true, investigation: true, medicine: true, religion: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "Choose 2 skills from: arcana, history, insight, investigation, medicine and religion"
  end
end
