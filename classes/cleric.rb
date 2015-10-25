require_relative 'class'
class Cleric < Classes
  def initialize(skill1, skill2)
    super
    hash = {history: true, insight: true, medicine: true, persuasion: true, religion: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "history, insight, medicine, persuasion, religion"
  end
end
