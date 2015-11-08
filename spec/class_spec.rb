require_relative '../spec_helper.rb'

describe Barbarian do
	it 'It Should be able to create a Barbarian.' do
    a = Barbarian.new('animal_handling', 'athletics')
    expect(a.skills.length).to eq(2)
		expect(!!a.skills.index(:animal_handling)).to eq(true)
		expect(!!a.skills.index(:athletics)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Barbarian.' do
		expect{Barbarian.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Bard do
	it 'It Should be able to create a Barbarian.' do
	  a = Bard.new('acrobatics', 'animal_handling', 'arcana')
	  expect(a.skills.length).to eq(3)
		expect(!!a.skills.index(:animal_handling)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(true)
		expect(!!a.skills.index(:acrobatics)).to eq(true)
		expect(!!a.skills.index(:insight)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Bard.' do
		expect{Bard.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Cleric do
	it 'It Should be able to create a Cleric.' do
	  a = Cleric.new('history', 'insight')
	  expect(a.skills.length).to eq(2)
		expect(!!a.skills.index(:history)).to eq(true)
		expect(!!a.skills.index(:insight)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Cleric.' do
		expect{Cleric.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Druid do
	it 'It Should be able to create a Druid.' do
	  a = Druid.new('animal_handling', 'insight')
	  expect(a.skills.length).to eq(2)
		expect(!!a.skills.index(:animal_handling)).to eq(true)
		expect(!!a.skills.index(:insight)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Druid.' do
		expect{Druid.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Fighter do
	it 'It Should be able to create a Fighter.' do
	  a = Fighter.new('animal_handling', 'athletics')
	  expect(a.skills.length).to eq(2)
		expect(!!a.skills.index(:animal_handling)).to eq(true)
		expect(!!a.skills.index(:athletics)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Fighter.' do
		expect{Fighter.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Monk do
	it 'It Should be able to create a Monk.' do
	  a = Monk.new('history', 'athletics')
	  expect(a.skills.length).to eq(2)
		expect(!!a.skills.index(:history)).to eq(true)
		expect(!!a.skills.index(:athletics)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Monk.' do
		expect{Monk.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Paladin do
	it 'It Should be able to create a Paladin.' do
	  a = Paladin.new('athletics', 'medicine')
	  expect(a.skills.length).to eq(2)
		expect(!!a.skills.index(:medicine)).to eq(true)
		expect(!!a.skills.index(:athletics)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Paladin.' do
		expect{Paladin.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Ranger do
	it 'It Should be able to create a Ranger.' do
	  a = Ranger.new('athletics', 'stealth', 'insight')
	  expect(a.skills.length).to eq(3)
		expect(!!a.skills.index(:athletics)).to eq(true)
		expect(!!a.skills.index(:insight)).to eq(true)
		expect(!!a.skills.index(:stealth)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Ranger.' do
		expect{Ranger.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Rogue do
	it 'It Should be able to create a Rogue.' do
	  a = Rogue.new('deception', 'perception', 'acrobatics', 'insight')
	  expect(a.skills.length).to eq(4)
		expect(!!a.skills.index(:perception)).to eq(true)
		expect(!!a.skills.index(:deception)).to eq(true)
		expect(!!a.skills.index(:acrobatics)).to eq(true)
		expect(!!a.skills.index(:insight)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Rogue.' do
		expect{Rogue.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Sorcerer do
	it 'It Should be able to create a Sorcerer.' do
	  a = Sorcerer.new('intimidation', 'persuasion')
	  expect(a.skills.length).to eq(2)
		expect(!!a.skills.index(:persuasion)).to eq(true)
		expect(!!a.skills.index(:intimidation)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Sorcerer.' do
		expect{Sorcerer.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Wizard do
	it 'It Should be able to create a Wizard.' do
	  a = Wizard.new('investigation', 'religion')
	  expect(a.skills.length).to eq(2)
		expect(!!a.skills.index(:investigation)).to eq(true)
		expect(!!a.skills.index(:religion)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Wizard.' do
		expect{Wizard.new('animal_handling')}.to raise_error(ArgumentError)
	end
end

describe Worlock do
	it 'It Should be able to create a Worlock.' do
	  a = Worlock.new('intimidation', 'deception')
	  expect(a.skills.length).to eq(2)
		expect(!!a.skills.index(:intimidation)).to eq(true)
		expect(!!a.skills.index(:deception)).to eq(true)
		expect(!!a.skills.index(:arcana)).to eq(false)
	end
	it 'It Should not be able to create an incomplete Worlock.' do
		expect{Worlock.new('animal_handling')}.to raise_error(ArgumentError)
	end
end
