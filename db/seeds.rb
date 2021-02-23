puts "Clean the db"

User.destroy_all

prima = User.create!(
  email: 'primaulia@gmail.com',
  password: 'testtest',
  username: 'primaulia'
)

miguel = User.create!(
  email: 'miguel@gmail.com',
  password: 'testtest',
  username: 'libsyz'
)

5.times do |index|
  random_user = [prima,miguel].sample
  puts "create flats for #{random_user.username}"
  Flat.create!(
    name: "Flat - #{index}",
    address: 'Farrer park',
    user: random_user
  )
end

puts "Done!"