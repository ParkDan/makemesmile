# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
vids = [
  { :source => "http://www.youtube.com/embed/A5c0X4MW_zE", :caption => "Brown cub falling asleep" },
  { :source => "http://www.youtube.com/embed/tQmG-O7mnoQ", :caption => "Baby polar bear" },
  { :source => "http://www.youtube.com/embed/-e3M93QWIQE", :caption => "Baby polar bear 2" },
  { :source => "http://www.youtube.com/embed/B8ISzf2pryI", :caption => "Denver guilty dog" },
  { :source => "http://www.youtube.com/embed/480keuakN6c", :caption => "Koko wants a baby" },
  { :source => "http://www.youtube.com/embed/-kIJqXLMLwc", :caption => "Shiba puppy sleeping" },
  { :source => "http://www.youtube.com/embed/m8rxXamfh5c", :caption => "Dog watching tv" }
]

vids.each do |t|
  v=Vid.new
  v.source=t[:source]
  v.caption=t[:caption]
  v.save
end
