require 'rails_helper'

FactoryGirl.define do
  factory :girl do
    # 方式1: 指定 (固定)
    # name "rose"
    # phone_number "13945756489"
    # address "zhangheng Road 666"
    # single true
    # beautiful true
    # age 24

    # 方式2: 使用faker,制作类似真实数据的 假数据 (不固定,产生不同的数据)
    name {Faker::Name.name }
    phone_number { Faker::PhoneNumber.cell_phone }
    address { Faker::Address.street_address }
    single { Faker::Boolean.boolean }
    beautiful { Faker::Boolean.boolean }
    age {Faker::Number.between(20,30) }
  end
end



