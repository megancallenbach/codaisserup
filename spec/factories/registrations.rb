FactoryGirl.define do
  factory :registration do
    user nil
    event nil
    status false
    price "9.99"
    guests_count 1
  end
end
