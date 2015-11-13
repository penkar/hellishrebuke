require_relative '../spec_helper.rb'
describe Skills do
	it 'It Should be able to randomize skills.' do
    a = Skills.new
    a.randomize_skills
    expect(a.strength).to be_between(2,19)
    expect(a.intelligence).to be_between(2,19)
    expect(a.wisdom).to be_between(2,19)
    expect(a.dexterity).to be_between(2,19)
    expect(a.constitution).to be_between(2,19)
    expect(a.charisma).to be_between(2,19)
	end

  it 'It Should be able to set skills.' do
    a = Skills.new
    a.randomize_skills
    a.strength = 18
    a.intelligence = 18
    a.wisdom = 18
    a.dexterity = 18
    a.constitution = 18
    a.charisma = 18
    expect(a.strength).to eq(18)
    expect(a.intelligence).to eq(18)
    expect(a.wisdom).to eq(18)
    expect(a.dexterity).to eq(18)
    expect(a.constitution).to eq(18)
    expect(a.charisma).to eq(18)
  end

	it 'It Should be able to set skills.' do
		a = Skills.new
		a.randomize_skills
		a.strength = 10
		a.intelligence = 10
		a.wisdom = 10
		a.dexterity = 10
		a.constitution = 10
		a.charisma = 10
		expect(a.strength).to eq(10)
		expect(a.intelligence).to eq(10)
		expect(a.wisdom).to eq(10)
		expect(a.dexterity).to eq(10)
		expect(a.constitution).to eq(10)
		expect(a.charisma).to eq(10)
	end
end
