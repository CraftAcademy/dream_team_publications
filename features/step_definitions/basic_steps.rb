Given("the following articles exist") do |table|
  table.hashes.each do |article|
    create(:article, article)
  end
end

Given("the following categories have been added to the articles") do |table|
  table.hashes.each do |article|
      current_article = Article.find_by(title: article[:title])
      category = Category.find_by(name: article[:category])
      current_article.categories.push category
      current_article.save
    end
end

And(/^I attach a file$/) do
  attach_file('article_image', "#{::Rails.root}/spec/fixtures/dummy_image.jpg")
end

Given("I am logged in as {string}") do |email|
  user = User.find_by(email: email)
  login_as(user, scope: :user)
end

Given("I am on the {string} page") do |page_name|
  visit page_path(page_name)
end

Given("I am on the {string} article page") do |article_title|
  visit find_article(article_title)
end

Given("the following categories exist") do |table|
  table.hashes.each do |category|
    create(:category, category)
  end
end

When("I select {string} from {string}") do |category_name, category_list|
  select(category_name, from: category_list.downcase)
end

Then("I should be on the {string} page") do |article_title|
  expect(page.current_path).to eq find_article(article_title)
end

Given("I try to visit the {string} article-page") do |article_title|
  visit find_article(article_title)
end

Given("I try to visit the Create Article page") do
  visit new_article_path
end

Then("I should be redirected to the Homepage") do
  expect(page.current_path).to eq root_path
end

Then("I fill in {string} with {string}") do |element, content|
  fill_in(element, with: content)
end

Then("I click on {string}") do |button_name|
  click_link_or_button button_name
end

Then("I click on Stripe button {string}") do |button_name|
  click_link_or_button button_name
  sleep(5)
  @stripe_iframe = all('iframe[name=stripe_checkout_app]').last
end

Then("I should see {string}") do |message|
  expect(page).to have_content message
end

Then("I should not see {string}") do |message|
  expect(page).not_to have_content message
end

Then("I should see {int} articles") do |int|
  expect(page).to have_css "article", count: int
end

Then("show me the page") do
  save_and_open_page
end

Then("I should see {int} {string}") do |int, category|
 expect(page).to have_content category, count: int
end

Given("I fill in Stripe field {string} with {string}") do |field, input|
  within_frame @stripe_iframe do
    fill_in field, with: input
  end
end

Given("submit the Stripe form") do
  within_frame @stripe_iframe do
    find('.Section-button').click
  end
  sleep(5)
end

Then("{string} should be a subscriber") do |email|
  current_user = User.find_by(email: email)
  current_user.subscriber? == true
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
