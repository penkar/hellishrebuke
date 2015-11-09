class Personality
  attr_accessor :skills, :languages, :personality
  def initialize(personality)
    @personality = personality
    @skills = []
    @languages = []
  end

  def self.subclasses
    return 'Acolyte, Charlatan, Criminal, Entertainer, FolkHero, GuildArtisan, Hermit, Noble, Outlander, Sage, Sailor, Soldier, Urchin'
  end

  def get_skills
    @skills
  end

end
