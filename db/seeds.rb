# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Channel.where(name: 'Super Fun Sample Test Channel').blank?
  Channel.create!(name: 'Super Fun Sample Test Channel')
end

if Video.where(name: 'Nickelodeon\'s Doug (opening credits)').blank?
  cid = Channel.where(name: 'Super Fun Sample Test Channel').first.id
  Video.create!( name: 'Nickelodeon\'s Doug (opening credits)', channel_id: cid)
end

Chat.create!(name: 'Chat One', topic: 'Are Koalas Bears?')
Chat.create!(name: 'Chat Two', topic: 'Harambe\'s Funeral Planning')
Chat.create!(name: 'Chat Three', topic: 'Irregular Plurals')
