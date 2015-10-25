class Classes
  attr_accessor :strength, :dexterity, :wisdom, :intelligence, :constitution, :charisma
  def initialize(subclass = false)
    @subclass = subclass
    @strength = 0
    @dexterity = 0
    @wisdom = 0
    @intelligence = 0
    @constitution = 0
    @charisma = 0
  end

  def self.subclasses
    return 'Barbarian, Bard, Cleric, Druid, Fighter, Monk, Paladin, Ranger, Rogue, Sorcerer, Warlock, Wizard'
  end

end
