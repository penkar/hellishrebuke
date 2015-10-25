class RaceClass
  attr_accessor :strength, :dexterity, :wisdom, :intelligence, :constitution, :charisma, :vision, :movement, :toughness, :stealth, :subclass
  def initialize(subclass = false, generic1 = false, generic2 = false)
    # self.subclasses unless subclass
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
    return 'Dwarf, Elf, Halfling, Human, Dragonborn, Gnome, Halfelf'
  end

  def ability_scores
    return {strength: @strength, dexterity: @dexterity, wisdom: @wisdom, intelligence: @intelligence, constitution: @constitution, charisma: @charisma}
  end
end
