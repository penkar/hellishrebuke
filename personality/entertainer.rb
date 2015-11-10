require_relative 'personality'
class Entertainer < Personality
  def initialize
    super
    @skills = [:acrobatics, :performance]
  end

  def self.skills
    return "Disguise kit, one type of musical instrument."
  end
end
