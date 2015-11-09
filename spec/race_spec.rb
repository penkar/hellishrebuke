require_relative '../spec_helper.rb'

describe Dragonborn do
	it 'It Should be able to create a Dragonborn of various colors.' do
    a = Dragonborn.new('black')
		expect(a.strength).to eq(2)
		expect(a.charisma).to eq(1)
		expect(a.movement).to eq(30)
		expect(a.damage).to eq('acid')
	end

	it 'It Should be able to create a Dragonborn of various colors.' do
    a = Dragonborn.new('white')
		expect(a.damage).to eq('cold')
	end

	it 'It Should be able to create a Dragonborn of various colors.' do
    a = Dragonborn.new('bronze')
		expect(a.damage).to eq('lightning')
	end

	it 'It Should be able to create a Dragonborn of various colors.' do
		a = Dragonborn.new('red')
		expect(a.damage).to eq('fire')
	end
end

describe Dwarf do
	it 'It Should not create a Dwarf without a sub-class.' do
		# expect{Dwarf.new}.to raise_error(NoMethodError)
	end

	it 'It Should create a Dwarf with a sub-class.' do
    a = Dwarf.new('hilldwarf')
		expect(a.constitution).to eq(2)
		expect(a.movement).to eq(25)
		expect(a.wisdom).to eq(1)
		expect(a.resistance.first).to eq('poison')
	end

	it 'It Should create a Dwarf with a sub-class.' do
    a = Dwarf.new('mountaindwarf')
		expect(a.constitution).to eq(2)
		expect(a.movement).to eq(25)
		expect(a.strength).to eq(2)
		expect(a.resistance.first).to eq('poison')
	end
end

describe Elf do
	# it 'It Should not create a Elf without a sub-class.' do
	# 	expect{Elf.new}.to raise_error(NoMethodError)
	# end

	it 'It Should create a Elf with a sub-class.' do
    a = Elf.new('highelf')
		expect(a.dexterity).to eq(2)
		expect(a.movement).to eq(30)
		expect(a.intelligence).to eq(1)
		expect(a.skills.first).to eq('perception')
	end

	it 'It Should create a Elf with a sub-class woodelf.' do
    a = Elf.new('woodelf')
		expect(a.wisdom).to eq(2)
		expect(a.movement).to eq(35)
	end

	it 'It Should create a Elf with a sub-class darkelf.' do
    a = Elf.new('darkelf')
		expect(a.charisma).to eq(1)
		expect(a.movement).to eq(35)
	end

	it 'It Should create a Elf with a sub-class drow.' do
    a = Elf.new('drow')
		expect(a.charisma).to eq(1)
		expect(a.movement).to eq(35)
	end
end

describe Gnome do
	# it 'It Should not create a Gnome without a sub-class.' do
	# 	expect{Gnome.new}.to raise_error(NoMethodError)
	# end

	it 'It Should create a Gnome with a sub-class.' do
    a = Gnome.new('forestgnome')
		expect(a.intelligence).to eq(2)
		expect(a.movement).to eq(25)
		expect(a.dexterity).to eq(1)
	end

	it 'It Should create a Gnome with a sub-class.' do
    a = Gnome.new('rockgnome')
		expect(a.constitution).to eq(1)
	end
end

describe Halfelf do
	# it 'It Should not create a Halfelf without a sub-class.' do
	# 	expect{Halfelf.new}.to raise_error(NoMethodError)
	# end

	it 'It Should create a Halfelf with a sub-class.' do
    a = Halfelf.new(false, 'charisma', 'charisma')
		expect(a.charisma).to eq(4)
		expect(a.movement).to eq(30)
	end

	it 'It Should create a Halfelf with a sub-class.' do
    a = Halfelf.new(false, 'charisma', 'wisdom')
		expect(a.charisma).to eq(3)
		expect(a.wisdom).to eq(1)
		expect(a.movement).to eq(30)
	end

	it 'It Should create a Halfelf with a sub-class.' do
    a = Halfelf.new(false, 'dexterity', 'wisdom')
		expect(a.charisma).to eq(2)
		expect(a.wisdom).to eq(1)
		expect(a.dexterity).to eq(1)
		expect(a.movement).to eq(30)
	end
end

describe Halfling do
	# it 'It Should not create a Halfling without a sub-class.' do
	# 	expect{Halfling.new}.to raise_error(NoMethodError)
	# end

	it 'It Should create a Halfling with a sub-class.' do
    a = Halfling.new('lightfoot')
		expect(a.dexterity).to eq(2)
		expect(a.charisma).to eq(1)
		expect(a.movement).to eq(25)
	end

	it 'It Should create a Halfling with a sub-class.' do
    a = Halfling.new('stout')
		expect(a.resistance.first).to eq('poison')
		expect(a.constitution).to eq(1)
	end
end

describe Halforc do
	# it 'It Should not create a Halforc without a sub-class.' do
	# 	expect{Halforc.new}.to raise_error(NoMethodError)
	# end

	it 'It Should create a Halforc with a sub-class.' do
    a = Halforc.new
		expect(a.strength).to eq(2)
		expect(a.constitution).to eq(1)
		expect(a.movement).to eq(30)
		expect(a.skills.first).to eq('intimidation')
	end
end

describe Human do
	# it 'It Should not create a Human without a sub-class.' do
	# 	expect{Human.new}.to raise_error(NoMethodError)
	# end

	it 'It Should create a Human with a sub-class.' do
    a = Human.new
		expect(a.strength).to eq(1)
		expect(a.dexterity).to eq(1)
		expect(a.wisdom).to eq(1)
		expect(a.intelligence).to eq(1)
		expect(a.charisma).to eq(1)
		expect(a.constitution).to eq(1)
		expect(a.movement).to eq(30)
	end
end

describe Tiefling do
	# it 'It Should not create a Tiefling without a sub-class.' do
	# 	expect{Tiefling.new}.to raise_error(NoMethodError)
	# end

	it 'It Should create a Tiefling with a sub-class.' do
    a = Tiefling.new
		expect(a.intelligence).to eq(1)
		expect(a.charisma).to eq(2)
		expect(a.movement).to eq(30)
		expect(a.resistance.first).to eq('fire')
	end
end
