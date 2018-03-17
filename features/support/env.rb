require 'coveralls'
require 'database_cleaner'
Coveralls.wear_merged!('rails')

require 'cucumber/rails'

World(FactoryBot::Syntax::Methods)

ActionController::Base.allow_rescue = false

begin
  require 'database_cleaner/cucumber'
  DatabaseCleaner.clean_with :truncation
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise "You need to add database_cleaner to your Gemfile (in the :test group) if you wish to use it."
end

Cucumber::Rails::Database.javascript_strategy = :truncation
