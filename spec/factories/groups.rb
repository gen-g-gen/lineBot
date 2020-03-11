FactoryBot.define do
  factory :group do
    id                      {"1"}
    name                      {"テスト"}
    created_at                {"2020-03-10 12:20:44"}
    updated_at                {"2020-03-10 12:20:44"}
    image                      {File.open("#{Rails.root}/public/sleep_inemuri_reclining_chair_woman.png")}
  end
end