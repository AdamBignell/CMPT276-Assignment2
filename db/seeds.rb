# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Trainer Seeds
trainer1 = Trainer.new("name" => "Adam")
trainer1.save
trainer2 = Trainer.new("name" => "Lance")
trainer2.save

# Tokimon Seeds
toki1 = Tokimon.new("name" => "Imugi", "weight" => 157.90, "height" => 7.8, "fly" => 9, "fight" => 4, "fire" => 6, "water" => 8, "electric" => 0, "ice" => 4, "trainer_id" => 2)
toki1.total = toki1.fly + toki1.fight + toki1.fire + toki1.water + toki1.electric + toki1.ice
toki1.save

toki2 = Tokimon.new("name" => "Eopsin", "weight" => 99.56, "height" => 4.3, "fly" => 0, "fight" => 9, "fire" => 3, "water" => 10, "electric" => 0, "ice" => 7, "trainer_id" => 1)
toki2.total = toki2.fly + toki2.fight + toki2.fire + toki2.water + toki2.electric + toki2.ice
toki2.save