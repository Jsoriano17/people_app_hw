class User < ApplicationRecord
    def create_user
        @user = User.new
        @user.first_name = Faker::Name
        @user.last_name = Faker::Name
        @user.age = rand(18..60)
        @user.hair_color = Faker::Color
        @user.eye_color = Faker::Color
        @user.gender = rand(1..2) == 1 ? 'Male' : 'Female'
        @user.alive = rand(1..2) == 1 ? true : false
    end
    10.times do
        create_user
    end
end
