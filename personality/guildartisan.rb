require_relative 'personality'
class GuildArtisan < Personality
  def initialize
    super
    @skills = [:insight, :persuasion]
  end

  def self.skills
    return "One type of artisan's tools. One language of your choice."
  end
end
