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

  def apply_race_modifiers(abilities)
    @acrobatics += $modifiers[abilities[$translate[:acrobatics]]]
    @animal_handling += $modifiers[abilities[$translate[:animal_handling]]]
    @arcana += $modifiers[abilities[$translate[:arcana]]]
    @athletics += $modifiers[abilities[$translate[:athletics]]]
    @deception += $modifiers[abilities[$translate[:deception]]]
    @history += $modifiers[abilities[$translate[:history]]]
    @insight += $modifiers[abilities[$translate[:insight]]]
    @intimidation += $modifiers[abilities[$translate[:intimidation]]]
    @investigation += $modifiers[abilities[$translate[:investigation]]]
    @medicine += $modifiers[abilities[$translate[:investigation]]]
    @nature += $modifiers[abilities[$translate[:nature]]]
    @perception += $modifiers[abilities[$translate[:perception]]]
    @performance += $modifiers[abilities[$translate[:performance]]]
    @persuasion += $modifiers[abilities[$translate[:persuasion]]]
    @religion += $modifiers[abilities[$translate[:religion]]]
    @sleight_of_hand += $modifiers[abilities[$translate[:sleight_of_hand]]]
    @stealth += $modifiers[abilities[$translate[:stealth]]]
    @survival += $modifiers[abilities[$translate[:survival]]]
  end

  def apply_class_personality_modifiers(classarr, personalityarr)
    array = classarr + personalityarr
    @acrobatics += 2 if array.include? :acrobatics
    @animal_handling += 2 if array.include? :animal_handling
    @arcana += 2 if array.include? :arcana
    @athletics += 2 if array.include? :athletics
    @deception += 2 if array.include? :deception
    @history += 2 if array.include? :history
    @insight += 2 if array.include? :insight
    @intimidation += 2 if array.include? :intimidation
    @investigation += 2 if array.include? :investigation
    @medicine += 2 if array.include? :investigation
    @nature += 2 if array.include? :nature
    @perception += 2 if array.include? :perception
    @performance += 2 if array.include? :performance
    @persuasion += 2 if array.include? :persuasion
    @religion += 2 if array.include? :religion
    @sleight_of_hand += 2 if array.include? :sleight_of_hand
    @stealth += 2 if array.include? :stealth
    @survival += 2 if array.include? :survival
  end

  def apply_personality_modifiers

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
