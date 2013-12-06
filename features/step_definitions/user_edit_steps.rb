Given(/^I visit the edit profile page$/) do
  visit '/users/edit'
end

When(/^I upload a photo$/) do
  click_button 'Update'
end

Then(/^I should see my avatar picture$/) do
  visit '/users/edit'
  page.find 'img.uploaded-avatar'
  expect(avatar['alt']).not_to eq 'Missing' 
end