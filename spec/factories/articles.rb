FactoryBot.define do
  factory :article do
    title "MyString"
    body "MyText"
    categories [Category.create(subject: 'Mat')]
  end
end
