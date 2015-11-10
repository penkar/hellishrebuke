require_relative 'personality'
class Soldier < Personality
  def initialize
    super
    @skills = [:athletics, :intimidation]
  end

  def self.skills
    return "One type of gaming set, vehicles (land)."
  end
end
