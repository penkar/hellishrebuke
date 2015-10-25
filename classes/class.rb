class Classes
  attr_accessor :skills, :hitpoints
  # :strength, :dexterity, :wisdom, :intelligence, :constitution, :charisma, 
  def initialize(skill1, skill2)
    # @strength = 0
    # @dexterity = 0
    # @wisdom = 0
    # @intelligence = 0
    # @constitution = 0
    # @charisma = 0
    @skills = []
    @hitpoints = 0
  end

  def self.subclasses
    return 'Barbarian, Bard, Cleric, Druid, Fighter, Monk, Paladin, Ranger, Rogue, Sorcerer, Warlock, Wizard'
  end

  def get_skills
    @skills
  end

end
