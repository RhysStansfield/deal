require 'spec_helper'

describe Customer do

  let(:customer) { FactoryGirl.create(:customer) }
  let(:business) { FactoryGirl.create(:business) }

  it { should have_and_belong_to_many :businesses }

  it { should have_and_belong_to_many :categories }

  it 'can follow other business users' do 
    customer.follow business 
    expect(business.customers.length).to eq 1
  end

end
