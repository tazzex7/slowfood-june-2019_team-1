Given("I visit the page") do
  visit root_path
end

Given("the following products exists") do |table|
  table.hashes.each do |product|
    FactoryBot.create(:product, product)
  end
end

Given("the following categories exists") do |table|
  table.hashes.each do |category|
    FactoryBot.create(:category, category)
  end
end

Given("the following user exists") do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end