require_relative 'personality'
class Sailor < Personality
  def initialize
    super
    @skills = [:athletics, :perception]
  end

  def self.skills
    return "Navigator's tools, vehicles (water)."
  end
end
