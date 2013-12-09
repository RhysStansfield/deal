require 'spec_helper'

describe User do
  
  let(:customer) { FactoryGirl.create(:customer) }

  it 'defaults type to customer' do
    expect(customer.type).to eq "Customer"
  end

end
