class RaceClass
  attr_accessor :strength, :dexterity, :wisdom, :intelligence, :constitution, :charisma, :vision, :movement, :toughness, :stealth, :subclass
  def initialize(subclass = false)
    @subclass = subclass
    @strength = 0
    @dexterity = 0
    @wisdom = 0
    @intelligence = 0
    @constitution = 0
    @charisma = 0
    @vision = 'normal'
    @movement = 0
    @stealth = ''
    @toughness = ''
  end

  def self.subclasses
    return 'dwarf, elf, halfling, human, dragonborn'
  end

  def ability_scores
    return {strength: @strength, dexterity: @dexterity, wisdom: @wisdom, intelligence: @intelligence, constitution: @constitution, charisma: @charisma}
  end
end
