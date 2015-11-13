require_relative '../spec_helper.rb'
describe Character do
	it 'It Should be able to create a Character with a name.' do
    a = Character.new('Trajan')
    expect(a.name).to eq('Trajan')
	end

	it 'It Should be able to create a Character with a name and skills.' do
    a = Character.new('Trajan')
		a.create_skills
		expect(a.skills.class).to eq(Skills)
		expect(a.skills.strength).to be_between(2,19)
		expect(a.skills.intelligence).to be_between(2,19)
		expect(a.skills.wisdom).to be_between(2,19)
		expect(a.skills.dexterity).to be_between(2,19)
		expect(a.skills.constitution).to be_between(2,19)
		expect(a.skills.charisma).to be_between(2,19)
    expect(a.name).to eq('Trajan')
	end

	it 'It Should be able to create a Character with a name and skills you set.' do
		a = Character.new('Trajan')
		a.create_skills
		a.skills.strength = 18
		a.skills.intelligence = 18
		a.skills.wisdom = 18
		a.skills.dexterity = 18
		a.skills.constitution = 18
		a.skills.charisma	 = 18
		expect(a.skills.class).to eq(Skills)
		expect(a.skills.strength).to eq(18)
		expect(a.skills.intelligence).to eq(18)
		expect(a.skills.wisdom).to eq(18)
		expect(a.skills.dexterity).to eq(18)
		expect(a.skills.constitution).to eq(18)
		expect(a.skills.charisma).to eq(18)
    expect(a.name).to eq('Trajan')
	end

  it 'It Should be able to add a class for the character weirdly(rogue).' do
    a = Character.new('Trajan')
    a.choose_class('Rogue', 'deception', 'perception', 'acrobatics', 'insight')
    expect(a.class.class).to eq(Rogue)
    expect(a.class.skills.length).to eq(4)
	end

  it 'It Should be able to add a class for the character (Worlock).' do
    a = Character.new('Trajan')
    a.choose_class('Worlock', 'intimidation', 'deception')
    expect(a.class.class).to eq(Worlock)
    expect(a.class.skills.length).to eq(2)
	end

  it 'It Should be able to add a class for the character (Ranger).' do
    a = Character.new('Trajan')
    a.choose_class('Ranger', 'athletics', 'stealth', 'insight')
    expect(a.class.class).to eq(Ranger)
    expect(a.class.skills.length).to eq(3)
  end

  it 'It Should be able to add a Race for the character (Dragonborn).' do
    a = Character.new('Trajan')
    a.choose_race('Dragonborn', 'black')
    expect(a.race.class).to eq(Dragonborn)
    expect(a.race.damage).to eq('acid')
  end

  it 'It Should be able to add a Race for the character (Tiefling).' do
    a = Character.new('Trajan')
    a.choose_race('Tiefling', 'black')
    expect(a.race.class).to eq(Tiefling)
    expect(a.race.resistance.first).to eq('fire')
  end

  it 'It Should be able to add a Race for the character (Gnome).' do
    a = Character.new('Trajan')
    a.choose_race('Gnome', 'forestgnome')
    expect(a.race.class).to eq(Gnome)
    expect(a.race.dexterity).to eq(1)
  end

  it 'It Should be able to add a Race for the character (Elf).' do
    a = Character.new('Trajan')
    a.choose_race('Elf', 'drow')
    expect(a.race.class).to eq(Elf)
    expect(a.race.charisma).to eq(1)
  end

	it 'It Should be able to add a Personality for the character (Acolyte).' do
		a = Character.new('Trajan')
		a.choose_personality('Acolyte')
		expect(a.personality.class).to eq(Acolyte)
		expect(a.personality.skills.first).to eq(:insight)
	end

	it 'It Should be able to add a Personality for the character (GuildArtisan).' do
		a = Character.new('Trajan')
		a.choose_personality('GuildArtisan')
		expect(a.personality.class).to eq(GuildArtisan)
		expect(a.personality.skills.first).to eq(:insight)
	end

	it 'It Should be able to add a Personality for the character (Sailor).' do
		a = Character.new('Trajan')
		a.choose_personality('Sailor')
		expect(a.personality.class).to eq(Sailor)
		expect(a.personality.skills.first).to eq(:athletics)
	end

	it 'It Should be able to apply class and personality proficiency.' do
		a = Character.new('Trajan')
		a.create_skills
		a.choose_class('Rogue', 'deception', 'perception', 'acrobatics', 'insight')
		a.choose_personality('Sailor')
		a.choose_race('Tiefling', 'black')
		a.apply
		expect(a.class.class).to eq(Rogue)
		expect(a.class.skills.length).to eq(4)
	end

	it 'It Should be able to create a Character with a name and skills you set.' do
		a = Character.new('Trajan')
		a.create_skills
		a.skills.strength = 18
		a.skills.intelligence = 18
		a.skills.wisdom = 18
		a.skills.dexterity = 18
		a.skills.constitution = 18
		a.skills.charisma	 = 18
		a.choose_class('Rogue', 'deception', 'perception', 'acrobatics', 'insight')
		a.choose_personality('Sailor')
		a.choose_race('Tiefling', 'black')
		a.apply
		p a.proficiency
	end
end
