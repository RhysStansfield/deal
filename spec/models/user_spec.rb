require 'spec_helper'

describe User do
  
  let(:user) { FactoryGirl.create(:user) }

  it 'defaults type to customer' do
    expect(user.type).to eq "Customer"
  end

end
