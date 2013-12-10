require 'spec_helper'

describe Click do

  it { should belong_to :offer }

  it { should belong_to :user }

end
