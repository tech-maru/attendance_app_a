# coding: utf-8

User.create!(name: "Admin User",
             email: "sample1@email.com",
             password: "sample1@email.com",
             password_confirmation: "sample1@email.com",
             admin: "true")
             
User.create!(name: "Superior User",
             email: "sample2@email.com",
             password: "sample2@email.com",
             password_confirmation: "sample2@email.com",
             superior: "true",
             admin: "false")

60.times do |n|
  name  = Faker::Name.name
  email = "sample-#{n+2}@email.com"
  password = "sample-#{n+2}@email.com"
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               admin: "false")
end