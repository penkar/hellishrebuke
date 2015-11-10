require_relative 'personality'
class Charlatan < Personality
  def initialize
    super
    @skills = [:sleight_of_hand, :deception]
  end

  def self.skills
    return "Proficiency with disguise kit and forgery kit."
  end
end
