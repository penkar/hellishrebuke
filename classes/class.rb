class Classes
  attr_accessor :skills, :hitpoints
  def initialize(skill1, skill2, skill3 = false, skill4 = false)
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
