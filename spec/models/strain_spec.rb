require 'rails_helper'

RSpec.describe Strain, type: :model do
  describe 'Stain model spec' do
    let(:Strain) do
      Car.create(name: 'Carmenere')
    end
    
    
  it 'is invalid with a duplicate name' do
    new_a = Strain.create(name: 'Merlot')
    new_b = Strain.new(name: 'Merlot')
    new_b.valid?
    expect(new_b.errors[:name]).to include("has already been taken")
  end

  it 'is invalid with a nil name' do
    new_a = Strain.create(name: nil)
    new_a.valid?
    expect(new_a.errors[:name]).to include("can't be blank")
  end
  
  it 'is invalid with a empty name' do
    new_a = Strain.create(name: "")
    new_a.valid?
    expect(new_a.errors[:name]).to include("can't be blank")
  end

  it 'it is valid ' do
    new_a = Strain.create(name: "Carmenere")
    expect(new_a).to be_valid
  end
end
end


