require './races/races.rb'
require './classes/classes.rb'
require './proficiency/proficiencies.rb'
require './level.rb'
require './helper.rb'

class Character
  attr_accessor :ability, :race, :name, :proficiency, :class, :race
  def initialize(name)
    @name = name
    @ability = Ability.new
    @proficiency = Proficiency.new
  end



end
