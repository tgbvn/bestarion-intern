# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product_list = [
  ["PO-SS-34-BK","Áo Polo Relax Ngắn Tay",400000,3,"https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/437824/item/goods_00_437824.jpg"],
  ["VN-TS-37-WE","Áo Thun Dry Nhiều Màu Cổ V Ngắn Tay",300000,1,"https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441597/item/goods_69_441597.jpg"],
  ["CN-SS-32-WE","AIRism Áo Polo Ngắn Tay",200000,2,"https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441604/item/goods_38_441604.jpg"],
  ["UK-SS-33-BK","AIRism Áo Polo Ngắn Tay",230000,3,"https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441604/item/goods_38_441604.jpg"],
  ["UK-TS-34-WE","Áo Sơ Mi Dài Tay",450000,4,"https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/438411/item/goods_67_438411.jpg"],
  ["CN-TS-31-BK","Áo Sơ Mi Cổ Trụ Ngắn Tay",470000,5,"https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/446958/item/goods_00_446958.jpg"],
  ["VN-TS-30-BK","Quần Dài Siêu Nhẹ",470000,2,"https://image.uniqlo.com/UQ/ST3/AsianCommon/imagesgoods/441243/item/goods_05_441243.jpg"],
]

product_list.each do |sku,title,price,quantity,image|
  Product.create!(sku: sku, title: title, price: price, quantity: quantity, image: image)
end