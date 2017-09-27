FactoryGirl.define do
  factory :article do
    title "MyString"
    content "MyText"
  end

  factory :invalid_article, class: Article do
    title ""
    content "hoge"
  end
end
