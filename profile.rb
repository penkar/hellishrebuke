module Character
  class Ability
    attr_accessor :strength, :str, :dexterity, :dex, :constitution, :con, :intelligence, :int, :wisdom, :wis, :charisma, :cha
    def initialize(str = getInitialStat, dex = getInitialStat, con = getInitialStat, int = getInitialStat, wis = getInitialStat, cha = getInitialStat)
      @strength = str
      @dexterity = dex
      @constitution = con
      @intelligence = int
      @wisdom = wis
      @charisma = cha
    end

    def getInitialStat
      array = Array.new(6)
      return array.map!{rand(6)+1}.sort.last(3).inject(:+)
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
end
