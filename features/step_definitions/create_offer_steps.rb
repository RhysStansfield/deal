Given(/^I create the "(.*?)" offer$/) do |arg1|
  fill_in 'Business', :with => "Nike"
  fill_in 'Product', :with => "Fuelband"
  fill_in 'Product description', :with => "Fitness tracker"
  fill_in 'Price', :with => 90
  click_button 'Initiate Offer'
end


