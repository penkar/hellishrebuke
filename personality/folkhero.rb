require_relative 'personality'
class FolkHero < Personality
  def initialize
    super
    @skills = [:animal_handling, :survival]
  end

  def self.skills
    return "One type of artisan's tools, vehicles(land)."
  end
end
