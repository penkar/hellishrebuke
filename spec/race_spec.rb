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
