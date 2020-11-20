FactoryBot.define do
  factory :user do
    nickname              {"test"}
    email                 {Faker::Internet.free_email}
    password              {"000000"}
    password_confirmation {password}
    prefecture            {"北海道"}
    city                  {"札幌市"}
  end
end