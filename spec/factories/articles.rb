FactoryBot.define do
  factory :article do
    title "MyTitle"
    body "MyBody"
    categories {[create(:category)]}
  end
end
