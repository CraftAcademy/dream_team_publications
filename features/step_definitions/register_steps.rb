
Given("I am on the index page") do
  visit root_path
end

When("I click {string}") do |element|
  click_link_or_button link
end

Then("I should be redirected to {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

  def page_path_from(page_name)
    case page_name.downcase
    when 'registration'
      new_user_registration_path
    else
      root_path
    end
  end


When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

Then("I should see the message {string}") do |content|
 expect(page).to have_content content
end

Given('the following user exist') do |table|
  table.hashes.each do |user|
    FactoryBot.create(:user, user)
  end
end
