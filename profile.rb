class Character
  attr_accessor :ability, :race, :name
  def initialize(name)
    @name = name
    @ability = Ability.new
    @race = Race.new
  end

  def set_race(race)
    old_race = @race.race
    @ability.race_change(race, old_race)
  end
end

class Ability
  attr_accessor :level, :exp, :strength, :str, :dexterity, :dex, :constitution, :con, :intelligence, :int, :wisdom, :wis, :charisma, :cha
  def initialize(str = getInitialStat, dex = getInitialStat, con = getInitialStat, int = getInitialStat, wis = getInitialStat, cha = getInitialStat)
    @strength = str
    @dexterity = dex
    @constitution = con
    @intelligence = int
    @wisdom = wis
    @charisma = cha
    self.modifiers
  end

  def getInitialStat
    array = Array.new(6)
    return array.map!{rand(6)+1}.sort.last(3).inject(:+)
  end

  def race_change(newRace, oldRace = false)
    races = {
      mountain_dwarf: {strength: 2},
      half_orc: {constitution: 1, strength: 2},
      human: {charisma: 1, wisdom: 1, constitution: 1, intelligence: 1, dexterity: 1, strength: 1},
      dragonborn: {charisma: 1, strength: 2},
      elf: {dexterity: 2},
      forest_gnome: {dexterity: 1},
      halfling: {dexterity: 2},
      dwarf: {constitution: 2},
      rock_gnome: {constitution: 1},
      stout_halfling: {constitution: 1},
      high_elf: {intelligence: 1},
      tiefling: {charisma: 2, intelligence: 1},
      gnome: {intelligence: 2},
      lightfoot_halfling: {charisma: 1},
      drow: {charisma: 1},
      half_elf: {charisma: 2},
      hill_dwarf: {wisdom: 1},
      wood_elf: {wisdom: 1}
    }
    race_decrement(races[oldRace.to_sym]) if oldRace
    race_increment(races[newRace.to_sym]) if newRace
  end

  def race_decrement(object)
    @strength -= object[:strength] if object[:strength]
    @dexterity -= object[:dexterity] if object[:dexterity]
    @constitution -= object[:constitution] if object[:constitution]
    @intelligence -= object[:intelligence] if object[:intelligence]
    @wisdom -= object[:wisdom] if object[:wisdom]
    @charisma -= object[:charisma] if object[:charisma]
  end

  def race_increment(object)
    @strength += object[:strength] if object[:strength]
    @dexterity += object[:dexterity] if object[:dexterity]
    @constitution += object[:constitution] if object[:constitution]
    @intelligence += object[:intelligence] if object[:intelligence]
    @wisdom += object[:wisdom] if object[:wisdom]
    @charisma += object[:charisma] if object[:charisma]
  end

  def modifiers
    modifiers = {1=>-5, 2=>-4,3=>-4,4=>-3,5=>-3,6=>-2,7=>-2,8=>-1,9=>-1,10=>0,11=>0,12=>1,13=>1,14=>2,15=>2,16=>3,17=>3,18=>4,19=>4,20=>5,21=>5,22=>6,23=>6,24=>7,25=>7,26=>8,27=>8,28=>9,29=>9,30=>10}
    @str = @strength + modifiers[@strength]
    @dex = @dexterity + modifiers[@dexterity]
    @con = @constitution + modifiers[@constitution]
    @int = @intelligence + modifiers[@intelligence]
    @wis = @wisdom + modifiers[@wisdom]
    @cha = @charisma + modifiers[@charisma]
  end
end

class Race
  attr_accessor :race
end

class Level
  attr_reader :level, :experience, :proficiency
  def initialize
    @level = 0
    @experience = 0
  end

  def level(level)
    @level = level
    @experience = $experience[level]
    @proficiency = $proficiency[level]
  end

  def experience(pts)
    threshold = pts
    $level.keys.each do |x|
      threshold = x if pts - x > 1
    end
    $level[threshold]
  end

  def add_experience(pts)
    @experience += pts
    experience(@experience)
  end
end

$experience = {
  1 => 0,
  2 => 300,
  3 => 900,
  4 => 2700,
  5 => 6500,
  6 => 14000,
  7 => 23000,
  8 => 34000,
  9 => 48000,
  10 => 64000,
  11 => 85000,
  12 => 100000,
  13 => 120000,
  14 => 140000,
  15 => 165000,
  16 => 195000,
  17 => 225000,
  18 => 265000,
  19 => 305000,
  20 => 355000
}

$level = {
  0 => 1,
  300 => 2,
  900 => 3,
  2700 => 4,
  6500 => 5,
  14000 => 6,
  23000 => 7,
  34000 => 8,
  48000 => 9,
  64000 => 10,
  85000 => 11,
  100000 => 12,
  120000 => 13,
  140000 => 14,
  165000 => 15,
  195000 => 16,
  225000 => 17,
  265000 => 18,
  305000 => 19,
  355000 => 20
}

$proficiency = {
  1 => 2,
  2 => 2,
  3 => 2,
  4 => 2,
  5 => 3,
  6 => 3,
  7 => 3,
  8 => 3,
  9 => 4,
  10 => 4,
  11 => 4,
  12 => 4,
  13 => 5,
  14 => 5,
  15 => 5,
  16 => 5,
  17 => 6,
  18 => 6,
  19 => 6,
  20 => 6
}
