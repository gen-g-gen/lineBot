FactoryBot.define do
  factory :user do
    id                         {"1"}
    lastname                   {"山田"}
    firstname                  {"孝之"}
    nickname                   {"つよし"}
    email                      {"yamada@gmail.com"}
    password                   {"000000"}
    password_confirmation      {"000000"}
    created_at                 {"2020-03-10 12:20:44"}
    updated_at                 {"2020-03-10 12:20:44"}
    image                      {File.open("#{Rails.root}/public/sleep_inemuri_reclining_chair_woman.png")}
  end
end