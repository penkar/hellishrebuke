require_relative 'personality'
class Urchin < Personality
  def initialize
    super
    @skills = [:sleight_of_hand, :stealth]
  end

  def self.skills
    return "Disguise kit, thieves' tools."
  end
end
