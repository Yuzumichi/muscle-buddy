# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

training_chest = Category.create(:part=>"胸")
training_back = Category.create(:part=>"背中")
training_leg = Category.create(:part=>"脚")
training_shoulder = Category.create(:part=>"肩")
training_arm = Category.create(:part=>"腕")
training_other = Category.create(:part=>"その他")

training_chest.children.create([{:part=>"ベンチプレス"}, {:part=>"インクラインベンチプレス"},{:part=>"チェストプレス"}])
training_back.children.create([{:part=>"ラットプルダウン"}, {:part=>"デッドリフト"},{:part=>"チンニング"}])
training_leg.children.create([{:part=>"スクワット"}, {:part=>"レッグプレス"},{:part=>"レッグエクステンション"}])
training_shoulder.children.create([{:part=>"サイドレイズ"}, {:part=>"ショルダープレス"},{:part=>"フロントレイズ"}])
training_arm.children.create(:part=>"アームカール")
training_other.children.create(:part=>"その他")