# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

ApplicationRecord.transaction do
  ##########################
  # ユーザー
  ##########################
  p '=== User ==='

  users = [
    {name: 'テストユーザーA', email: 'test@test.com'},
    {name: 'テストユーザーB', email: 'user.b@test.com'},
    {name: 'テストユーザーC', email: 'user.c@test.com'},
  ]

  users.each do |user|
    object = User.find_or_initialize_by(user)
    object.password = 'password'
    object.save!
  end
end
