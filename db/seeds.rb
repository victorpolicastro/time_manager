# Create user
user = User.create!(first_name: 'Victor', last_name: 'Policastro', email: 'policastro.victor@gmail.com', password: '123456')

# Create marks for user
('2020-12-01'.to_date..'2020-12-31'.to_date).each do |date|
  user.marks.create!(date: date, time: '08:00'.to_time, kind: :entrance)
  user.marks.create!(date: date, time: '12:00'.to_time, kind: :exit)
  user.marks.create!(date: date, time: '13:00'.to_time, kind: :entrance)
  user.marks.create!(date: date, time: '15:00'.to_time, kind: :exit)
end
