require './skills/skills.rb'
require './personality/personalities.rb'
require './races/races.rb'
require './classes/classes.rb'
require './proficiency/proficiencies.rb'
require './level.rb'
require './helper.rb'

$raceHash = {
  Dwarf: Dwarf,
  Elf: Elf,
  Halfling: Halfling,
  Human: Human,
  Dragonborn: Dragonborn,
  Gnome: Gnome,
  Halfelf: Halfelf,
  Halforc: Halforc,
  Tiefling: Tiefling
}
$classHash = {
  Barbarian: Barbarian,
  Bard: Bard,
  Cleric: Cleric,
  Druid: Druid,
  Fighter: Fighter,
  Monk: Monk,
  Paladin: Paladin,
  Ranger: Ranger,
  Rogue: Rogue,
  Sorcerer: Sorcerer,
  Worlock: Worlock,
  Wizard: Wizard
}
$personalityHash = {
  Acolyte: Acolyte,
  Charlatan: Charlatan,
  Criminal: Criminal,
  Entertainer: Entertainer,
  FolkHero: FolkHero,
  GuildArtisan: GuildArtisan,
  Hermit: Hermit,
  Noble: Noble,
  Outlander: Outlander,
  Sage: Sage,
  Sailor: Sailor,
  Soldier: Soldier,
  Urchin: Urchin
}

class Character
  attr_accessor :ability, :race, :name, :proficiency, :class, :race, :personality, :skills
  def initialize(name)
    @name = name
    @proficiency = Proficiency.new
  end

  def create_skills
    @skills = Skills.new
    @skills.randomize_skills
  end

  def choose_class(type, generic1, generic2, generic3 = false, generic4 = false)
    @class = $classHash[type.to_sym].new(generic1, generic2, generic3, generic4)
  end

  def choose_race(race, subclass = false, skill1 = false, skill2 = false)
    @race = $raceHash[race.to_sym].new(subclass, skill1, skill2)
  end

  def choose_personality(personality)
    @personality = $personalityHash[personality.to_sym].new
  end

  def apply
    return false unless @class.skills && @personality.skills && @race
    @proficiency.apply_class_personality_modifiers(@class.skills, @personality.skills)
    input = Hash.new
    race = @race.skill_list
    skills = @skills.skills
    race.each do |x,y|
      input[x] = race[x] + skills[x]
    end
    @proficiency.apply_race_modifiers(input)
  end

end
