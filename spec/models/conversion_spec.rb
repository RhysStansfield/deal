require 'spec_helper'

describe Conversion do

	let(:business) { FactoryGirl.create(:business) }

	let(:business2) { FactoryGirl.create(:business2) }

	it { should belong_to :customer }

	it { should belong_to :offer }

	context "Calculating number number of conversions per click" do

		it "will be able to calculate the number of conversions per click" do
			expect(Conversion.conv_per_click(1, 2)).to eq 0.5
		end

		it "will give me the total number of conversions for a business" do
			expect(Conversion.total_conversions(business2)).to eq 6
		end

		it "will return 0 if the business has made no offers or had no conversions" do
			expect(Conversion.total_conversions(business)).to eq 0
		end

		context "it can check if a businesses offers include conversions" do

			it "will return true if provided a business which has no conversions" do
				expect(Conversion.iterate_offers(business)).to eq true
			end

			it "will return false if provided a business which has conversions" do
				expect(Conversion.iterate_offers(business2)).to eq false
			end

		end

	end

end
