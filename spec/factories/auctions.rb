FactoryGirl.define do
  factory :auction do
    sequence(:title)   {|n|"#{n}-#{Faker::Commerce.product_name}"}
    details            { Faker::Lorem.sentence }
    sequence(:ends_on) Date.today
    reserve_price      { Faker::Commerce.price }

  end
end
