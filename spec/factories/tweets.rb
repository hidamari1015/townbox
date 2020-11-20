FactoryBot.define do
  factory :tweet do
    title              {"test"}
    catch_copy         {"test"}
    concept            {"test"}
    
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end