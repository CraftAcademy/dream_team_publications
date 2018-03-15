Then("I should be redirected to {string} Page") do |page_name|
  expect(page.current_path).to eq page_path(page_name)
end

# Given("I am on the {string} page") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end

  # def page_path_from(page_name)
  #   if path == 'registration'
  #     new_user_registration_path
  #   else
  #     root_path
  #   end
  # end

Given('the following user exist') do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end
