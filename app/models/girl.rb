class Girl < ApplicationRecord
  attr_accessor :name, :phone_number, :address, :single, :beautiful, :age

  def have_chance?
    return self.single
  end

  # 符合胃口的条件: (25岁以下,单身即可)||(25岁以上,单身且漂亮)
  def your_taste?
    return (self.age <= 25 && self.single) || (self.age > 25 && self.beautiful && self.single)
  end

  # 给你一个数组,里面包含多个girl, 筛选出符合你胃口 的 girl
  # 要求封装一个response[Hash],作为该方法的返回值
  def self.choose_some_from_many(girls = [])

    response = {
        code: false, # 存在的话 true, 不存在的话(result内部为空) false
        result: {}  # 存储 id=>girl  id从0开始递增
    }
    id = 0
    girls.each do |girl|
      if girl.your_taste?
        response[:result][id] = girl
        id = id + 1
      end
    end

    if response[:result].size() > 0
      response[:code] = true
    end

    return response
  end

  def show
    puts "#{self.name},#{self.phone_number},#{self.address},#{self.single},#{self.beautiful},#{self.age}"
  end

end
