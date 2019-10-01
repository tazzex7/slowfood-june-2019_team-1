Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should be on Login page") do
  visit new_user_session_path
end

Then("I should be on Sign up page") do
  visit new_user_registration_path
end