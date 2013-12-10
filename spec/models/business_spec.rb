require 'spec_helper'

describe Business do

  let(:business) { FactoryGirl.create(:business) }

  it { should have_and_belong_to_many(:customers) }

  it { should have_many :offers }

  it { should belong_to :category }

  it 'should have a category when created' do
    expect(business.category.name).to eq 'Sports & Outdoors'
  end

end
