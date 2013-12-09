Given(/^I visit the edit profile page$/) do
  visit '/users/edit'
end

When(/^I upload a photo$/) do
  attach_file 'user_avatar', Rails.root.join('features/images/rhysweird.jpg')
  fill_in "Current password", with: "devesh1234"
  click_button 'Update'
end

Then(/^I should see my avatar picture$/) do
  visit '/users/edit'
  page.find 'img.uploaded-avatar'
  avatar = page.find 'img.uploaded-avatar'
  expect(avatar['alt']).not_to eq 'Missing' 
end