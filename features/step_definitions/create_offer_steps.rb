Given(/^I fill in the form with:$/) do |offers|
  	offers.hashes.each do |offer|
    	fill_in(:offer_business, :with => 'Nike')
		click_button 'Initiate Offer'
  	end
end