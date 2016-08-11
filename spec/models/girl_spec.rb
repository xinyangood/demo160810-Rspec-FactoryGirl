require 'rails_helper'

RSpec.describe Girl, :type => :model do
  before(:all){
    # @girl_1 = FactoryGirl.create(:girl)
    # @girls = FactoryGirl.create_list(:girl, 20)
    @girl_1 = FactoryGirl.build_stubbed(:girl)
    @girls = FactoryGirl.build_stubbed_list(:girl, 20)
    # puts @girls
  }

  # 数据: 1个女孩的信息, 测试choose_some_from_many方法的 返回结果是否正确
  it "test  1 girl" do
    response = Girl.choose_some_from_many(girls = [@girl_1])
    p response

    if response[:code] == false
      expect(response[:result]).blank?
    elsif response[:code] == true
      response[:result].each do |k, v|
        puts "#{v.show}"
        expect(v.your_taste?).to eq(true)
      end
    end

  end

  # 数据: 多个女孩的信息, 测试choose_some_from_many方法的 返回结果是否正确
  it "test ,many girls" do
    response = Girl.choose_some_from_many(girls = @girls)
    p response

    if response[:code] == false
      expect(response[:result]).blank?
    elsif response[:code] == true
      response[:result].each do |k, v|
        puts "#{v.show}"
        expect(v.your_taste?).to eq(true)
      end
    end

  end

end

#
# before(:all){
#   params_1 = {
#       name: "rose", phone_number: "13245454545", address: "zhangheng road",
#       single: true, beautiful: true, age: 22
#   }
#   params_2 = {
#       name: "hanmeime", phone_number: "13212345678", address: "zhangheng road",
#       single: false, beautiful: true, age: 24
#   }
#   params_3 = {
#       name: "lili", phone_number: "18911547847", address: "zhangheng road",
#       single: true, beautiful: true, age: 30
#   }
#   @girl_1 = Girl.new(params_1)
#   @girl_2 = Girl.new(params_2)
#   @girl_3 = Girl.new(params_3)
# }
#
# # 数据: 3个女孩的信息, 测试choose_some_from_many方法的 返回结果是否正确
# it "test choose_some_from_many( three girls)" do
#   response = Girl.choose_some_from_many(girls = [@girl_1, @girl_2, @girl_3])
#   p response
#
#   if response[:code] == false
#     expect(response[:result]).blank?
#   elsif response[:code] == true
#     response[:result].each do |k, v|
#       expect(v.your_taste?).to eq(true)
#     end
#   end
#
# end


# @girl_1 = FactoryGirl.build_stubbed(:girl)
# @girls = FactoryGirl.build_stubbed_list(:girl)