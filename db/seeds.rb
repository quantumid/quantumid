# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Channel.where(name: 'Super Fun Sample Test Channel').blank?
  Channel.create!(name: 'Super Fun Sample Test Channel', vimeo_id: 112_930_1)
end

if Video.where(title: 'Nickelodeon\'s Doug (opening credits)').blank?
  cid = Channel.where(vimeo_id: 112_930_1).first.id
  Video.create!(vimeo_id: 150_707_411, title: 'Nickelodeon\'s Doug (opening credits)', channel_id: cid)
end
