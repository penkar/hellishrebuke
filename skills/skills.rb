class Skills
  attr_accessor :strength, :dexterity, :wisdom, :intelligence, :constitution, :charisma
  def initialize

  end

  def skill_list
    return [:strength, :dexterity, :wisdom, :intelligence, :constitution, :charisma]
  end

  def randomize_skills
    @strength = roll
    @dexterity = roll
    @wisdom = roll
    @intelligence = roll
    @constitution = roll
    @charisma = roll
  end

  def roll
    arr = []
    6.times { arr.push(rand(6)+1)}
    return arr.sort.last(3).inject(:+)
  end
end
