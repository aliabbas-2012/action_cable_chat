# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_list = [

    {email: "itsgeniusstar@gmail.com", password: "admin123", password_confirmation: "admin123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-02-06 14:02:10", last_sign_in_at: "2016-02-06 14:02:10", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
    {email: "test_user1@test.com", password: "admin123", password_confirmation: "admin123", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-02-06 14:03:01", last_sign_in_at: "2016-02-06 14:03:01", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},

]
user_list.each do | object|
  unless User.find_by_email(object[:email])
    user = User.new (object)
    # user.skip_confirmation!
    user.save!
  end

end