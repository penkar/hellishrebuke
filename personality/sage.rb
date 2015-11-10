require_relative 'personality'
class Sage < Personality
  def initialize
    super
    @skills = [:arcana, :history]
  end

  def self.skills
    return "Two languages of your choice."
  end
end
