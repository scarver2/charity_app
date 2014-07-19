charities = [
  'American Heart Association',
  'Living Waters',
  'Make-A-Wish',
  'Operation Blessing',
  "Samaritan's Purse",
  'St. Jude'
]

charities.each do |name|
  unless Charity.exists?(name: name)
    Charity.create(name: name)
    puts name
  end
end

puts 'Charities seeded.'
