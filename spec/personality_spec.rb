require_relative '../spec_helper.rb'
describe Acolyte do
	it 'It Should be able to create a Acolyte.' do
    a = Acolyte.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:insight)
		expect(a.skills.last).to eq(:religion)
	end
end

describe Charlatan do
	it 'It Should be able to create a Charlatan.' do
    a = Charlatan.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:sleight_of_hand)
		expect(a.skills.last).to eq(:deception)
	end
end

describe Criminal do
	it 'It Should be able to create a Criminal.' do
    a = Criminal.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:deception)
		expect(a.skills.last).to eq(:stealth)
	end
end

describe Entertainer do
	it 'It Should be able to create a Entertainer.' do
    a = Entertainer.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:acrobatics)
		expect(a.skills.last).to eq(:performance)
	end
end

describe FolkHero do
	it 'It Should be able to create a FolkHero.' do
    a = FolkHero.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:animal_handling)
		expect(a.skills.last).to eq(:survival)
	end
end

describe GuildArtisan do
	it 'It Should be able to create a GuildArtisan.' do
    a = GuildArtisan.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:insight)
		expect(a.skills.last).to eq(:persuasion)
	end
end

describe Hermit do
	it 'It Should be able to create a Hermit.' do
    a = Hermit.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:medicine)
		expect(a.skills.last).to eq(:religion)
	end
end

describe Noble do
	it 'It Should be able to create a Noble.' do
    a = Noble.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:history)
		expect(a.skills.last).to eq(:persuasion)
	end
end

describe Outlander do
	it 'It Should be able to create a Outlander.' do
    a = Outlander.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:athletics)
		expect(a.skills.last).to eq(:survival)
	end
end

describe Sage do
	it 'It Should be able to create a Sage.' do
    a = Sage.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:arcana)
		expect(a.skills.last).to eq(:history)
	end
end

describe Sailor do
	it 'It Should be able to create a Sailor.' do
    a = Sailor.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:athletics)
		expect(a.skills.last).to eq(:perception)
	end
end

describe Soldier do
	it 'It Should be able to create a Soldier.' do
    a = Soldier.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:athletics)
		expect(a.skills.last).to eq(:intimidation)
	end
end

describe Urchin do
	it 'It Should be able to create a Urchin.' do
    a = Urchin.new
    expect(a.skills.length).to eq(2)
		expect(a.skills.first).to eq(:sleight_of_hand)
		expect(a.skills.last).to eq(:stealth)
	end
end
