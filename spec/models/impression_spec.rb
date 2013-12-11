# require 'spec_helper'


describe Impression do

  it { should belong_to :offer }

  it { should belong_to :user }

end

# describe Impression do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

