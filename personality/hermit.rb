require_relative 'personality'
class Hermit < Personality
  def initialize
    super
    @skills = [:medicine, :religion]
  end

  def self.skills
    return "Herbalism kit. One language of your choice."
  end
end
