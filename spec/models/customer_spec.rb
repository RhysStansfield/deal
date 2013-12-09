require 'spec_helper'

describe Customer do

  it { should have_and_belong_to_many(:businesses) }

end
