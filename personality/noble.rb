require_relative 'personality'
class Noble < Personality
  def initialize
    super
    @skills = [:history, :persuasion]
  end

  def self.skills
    return "One type of gaming set. One of your choice."
  end
end
