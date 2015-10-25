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
