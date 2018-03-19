FactoryBot.define do
  factory :article do
    title "MyString"
    body "MyText"
    categories {[create(:category)]}
  end
end
