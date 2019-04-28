When("I visit the site") do
  visit root_path
end
  
Then("I should see {string}") do |content|
  expect(page).to have_content content
end
  
Given("the following articles exists") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end

Given("I visit the {string} page") do |string|
  visit root_path
end

Then("I fill in {string} with {string}") do |field, user_info|
  fill_in field, with: user_info
end

Then("I click the {string} button") do |string|
  click_button string
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end    
end

Given("I click the {string} link") do |string|
  visit root_path
end

When("I click {string} button") do |string|
  click_button string
end
