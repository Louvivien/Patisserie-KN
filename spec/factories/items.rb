# == Schema Information
#
# Table name: items
#
#  id              :bigint(8)        not null, primary key
#  title           :string
#  personalization :string
#  quantity        :integer
#  price           :decimal(, )
#  comment         :text
#  cart_id         :bigint(8)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :item do
    association :user
    association :product
    personalization { Faker::Lorem.sentence }
    quantity { Faker::Number.digit }
    price { Faker::Number.decimal(2, 2) }
    comment { Faker::Food.description }
  end
end
