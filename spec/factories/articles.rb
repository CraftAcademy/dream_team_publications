FactoryBot.define do
  factory :article do
    title "MyString"
    body "MyText"
    categories [Category.create(name: 'Fashion')]
  end
end
