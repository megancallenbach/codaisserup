FactoryGirl.define do
  factory :event do
    name                "Sushi Party"
    description         {Faker::Lorem.sentence(2)}
    location            "Amsterdam"
    price               10
    capacity            30
    includes_food       true
    includes_drinks     true
    starts_at           {Faker::Time.between(2.days.ago, 1.days.ago)}
    ends_at             {DateTime.now}
  end

  trait :active do
    active true
  end

  trait :inactive do
    active false
  end
end
