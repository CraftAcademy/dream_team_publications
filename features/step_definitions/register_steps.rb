Then("I should be redirected to {string} page") do |page_name|
  expect(page.current_path).to eq page_path(page_name)
end

Given('following user exist') do |table|
  table.hashes.each do |user|
    create(:user, user)
  end
end
