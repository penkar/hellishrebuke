require_relative 'class'
class Bard < Classes
  def initialize(skill1, skill2)
    super
    hash = {athletics: true, insight: true, intimidation: true, medicine: true, persuasion: true, religion: true}
    @skills.push(skill1.to_sym) if hash[skill1.to_sym]
    @skills.push(skill2.to_sym) if hash[skill2.to_sym]
  end

  def self.skills
    return "athletics, insight, intimidation, medicine, persuasion, religion"
  end
end