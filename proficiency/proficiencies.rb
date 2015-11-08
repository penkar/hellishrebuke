$modifiers = {1=>-5, 2=>-4,3=>-4,4=>-3,5=>-3,6=>-2,7=>-2,8=>-1,9=>-1,10=>0,11=>0,12=>1,13=>1,14=>2,15=>2,16=>3,17=>3,18=>4,19=>4,20=>5,21=>5,22=>6,23=>6,24=>7,25=>7,26=>8,27=>8,28=>9,29=>9,30=>10}

class Proficiency
  attr_accessor :acrobatics, :animal_handling, :arcana, :athletics, :deception, :history, :insight, :intimidation, :investigation, :medicine, :nature, :perception, :performance, :persuasion, :religion, :sleight_of_hand, :stealth, :survival, :proficiency
  def initialize
    @acrobatics = 0
    @animal_handling = 0
    @arcana = 0
    @athletics = 0
    @deception = 0
    @history = 0
    @insight = 0
    @intimidation = 0
    @investigation = 0
    @medicine = 0
    @nature = 0
    @perception = 0
    @performance = 0
    @persuasion = 0
    @religion = 0
    @sleight_of_hand = 0
    @stealth = 0
    @survival = 0
  end

  # def getInitialStat
  #   array = Array.new(6)
  #   return array.map!{rand(6)+1}.sort.last(3).inject(:+)
  # end

  def apply_modifiers

  end

  def get_modifiers
    return {
      :acrobatics=> @acrobatics,
      :animal_handling=> @animal_handling,
      :arcana=> @arcana,
      :athletics=> @athletics,
      :deception=> @deception,
      :history=> @history,
      :insight=> @insight,
      :intimidation=> @intimidation,
      :investigation=> @investigation,
      :medicine=> @medicine,
      :nature=> @nature,
      :perception=> @perception,
      :performance=> @performance,
      :persuasion=> @persuasion,
      :religion=> @religion,
      :sleight_of_hand=> @sleight_of_hand,
      :stealth=> @stealth,
      :survival=> @survival
    }
  end
end
