FactoryBot.define do
  factory :article do
    title "MyString"
    body "MyText"
    categories {[create(:category)]}
    # image "myimage.jpg"
  end
end
