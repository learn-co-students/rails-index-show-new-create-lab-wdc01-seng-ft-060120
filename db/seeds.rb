require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Coupon.destroy_all
20.times do
  code = "#{Faker::Games::Dota.item.tr(' ','_')}_#{rand(60.1)}%_off"
  store = ["Side Shop", "Secret Shop", "Main Shop"].shuffle[0]
  c = Coupon.new
  c.coupon_code = code
  c.store = store
  c.save
end