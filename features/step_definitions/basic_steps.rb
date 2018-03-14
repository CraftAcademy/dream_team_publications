Given("I am on the {string} Page") do |page_name|
  visit page_path(page_name)
end

Then("I fill in {string} with {string}") do |element, content|
  fill_in(element, with: content)
end

Then("I click on {string}") do |button_name|
  click_link_or_button(button_name)
end

Then("I should see {string}") do |message|
  expect(page).to have_content message
end

Then("show me the page") do
  save_and_open_page
end

def page_path(path)
  site_path =  if path == 'Create Article'
                new_article_path
               end
  site_path
end