require_relative 'personality'
class Outlander < Personality
  def initialize
    super
    @skills = [:athletics, :survival]
  end

  def self.skills
    return "One type of musical instrument."
  end
end
