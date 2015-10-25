require_relative 'race'
class Dragonborn < RaceClass
  attr_accessor :damage, :breath

  def initialize(subclass = false)
    super
    @strength += 2
    @charisma += 1
    @movement += 30
    self.dragon if subclass
    @resistance = @damage
    # self.send(subclass) if subclass
  end

  def self.subclasses
    return 'black, blue, brass, bronze, copper, golden, green, red, silver, white'
  end

  def dragon
    case @subclass
      when 'black' then @damage, @breath = 'acid', '5 by 30ft line, dexterity'
      when 'blue' then @damage, @breath = 'lightning', '5 by 30ft line, dexterity'
      when 'brass' then @damage, @breath = 'fire', '5 by 30ft line, dexterity'
      when 'bronze' then @damage, @breath = 'lightning', '5 by 30ft line, dexterity'
      when 'copper' then @damage, @breath = 'acid', '5 by 30ft line, dexterity'
      when 'golden' then @damage, @breath = 'fire', '15 ft cone, dexterity'
      when 'green' then @damage, @breath = 'poison', '15 ft cone, constitution'
      when 'red' then @damage, @breath = 'fire', '15 ft cone, dexterity'
      when 'silver' then @damage, @breath = 'cold', '15 ft cone, constitution'
      when 'white' then @damage, @breath = 'cold', '15 ft cone, constitution'
      else @damage, @breath = 'none', 'none'
    end
  end
end
