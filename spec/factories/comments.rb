FactoryBot.define do
  factory :comment do
    text              {"test"}

    association :user
    association :tweet
  end
end