Given("the following articles exist") do |table|
  table.hashes.each do |article|
    create(:article, article)
  end
end

Given("I am on the {string} page") do |page_name|
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
  if path == 'Create Article'
    new_article_path
<<<<<<< HEAD
  elsif path == 'index'
    root_path
  elsif path == 'registration'
      new_user_registration_path
=======
  elsif path == 'Holger is the best'
    article_title = Article.find_by(title: path)
    article_path(article_title)
  elsif path == 'Index'
    root_path
>>>>>>> 4cd66c4293fe3d6d21b22e6ea4149f597c3b076f
  else
    raise "You need to add #{path} to page_path"
  end
end
