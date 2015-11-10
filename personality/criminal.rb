require_relative 'personality'
class Criminal < Personality
  def initialize
    super
    @skills = [:deception, :stealth]
  end

  def self.skills
    return "One type of gaming set, thieve's tools."
  end
end
