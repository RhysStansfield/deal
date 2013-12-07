require 'spec_helper'

describe User do
  
  let(:user) { FactoryGirl.create(:user) }
  let(:business_user) {FactoryGirl.create(:business_user)}

  it 'defaults type to customer' do
    expect(user.type).to eq "Customer"
  end

  it 'can follow other business users' do 
    user.follow business_user 
    expect(user.followers.length).to eq 1
  end

end
