Then("I should be redirected to {string} Page") do |page_name|
  expect(page.current_path).to eq page_path(page_name)
end

Given('the following user exist') do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end
