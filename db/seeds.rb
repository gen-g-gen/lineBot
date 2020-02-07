

100.times do |n|
  content = Faker::ChuckNorris.fact
  
  Norrisc.create(  
    content: content,
    user_id: 6
              )
end