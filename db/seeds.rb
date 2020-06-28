# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Coupon.destroy_all

Coupon.create(coupon_code: "123458203409", store: "Walgreens")
Coupon.create(coupon_code: "643534241413", store: "Best Buy")
Coupon.create(coupon_code: "42324rf2qf3d", store: "Amazon")