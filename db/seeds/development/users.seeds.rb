users = [
  'homer@simpsons.com',
  'marge@simpsons.com'
]

users.each do |email|
  unless User.exists?(email: email)
    User.create!(email: email, password: 'password', password_confirmation: 'password')
    puts email
  end
end

puts 'Users seeded.'
