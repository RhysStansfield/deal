Then(/^I should not see "(.*?)"$/) do |content|
  expect(page).not_to have_content content
end