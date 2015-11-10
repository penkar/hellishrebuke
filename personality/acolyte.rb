require_relative 'personality'
class Acolyte < Personality
  def initialize
    super
    @skills = [:insight, :religion]
  end

  def self.skills
    return "Choose 2 languages"
  end
end
