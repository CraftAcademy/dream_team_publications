Given("the following articles exist") do |table|
  table.hashes.each do |article|
    create(:article, article)
  end
end

Given("the following categories exist") do |table|
  table.hashes.each do |category|
    create(:category, category)
  end
end

When("I select {string} from {string}") do |subject, category|
  select(subject, from: category)
end

Given("I am on the {string} page") do |page_name|
  visit page_path(page_name)
end

Given("I am on the {string} article page") do |article_title|
  visit find_article(article_title)
end

Then("I should be on the {string} page") do |article_title|
  expect(page.current_path).to eq find_article(article_title)
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

def find_article(title)
  article = Article.find_by(title: title)
  if !article.nil?
    article_path(article)
  else
    page_path(title)
  end
end

def page_path(path)
  if path == 'Create Article'
    new_article_path
  elsif path == 'Subscriber'
    new_user_registration_path
  elsif path == 'Index'
    root_path
  else
    raise "You need to add #{path} to page_path function"
  end
end
