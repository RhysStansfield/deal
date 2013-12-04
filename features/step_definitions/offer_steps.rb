And(/^"(.*?)" has added an offer$/) do |business|
	FactoryGirl.create(:offer)
	visit '/offers'
end

