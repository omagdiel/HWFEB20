@user = User.create!(email: "test@test.com",
                    first_name: "Test",
                    last_name: "User",
                    password:"asdfasdf",
                    password_confirmation:"asdfasdf",
                    roles: "user"
                    )
puts "1 User created"

@admin = User.create!(email: "admin@test.com",
                    first_name: "Admin",
                    last_name: "User",
                    password:"asdfasdf",
                    password_confirmation:"asdfasdf",
                    roles: "admin"
                    )
puts "1 Admin created"

10.times do |post|
  Post.create!(title: "My Post #{post}",
              body: "This is some great text information and I am going to show it all to you",
              status: 0,
              image: "http://via.placeholder.com/350x200",
              user_id: @user.id
              )
end
puts "10 posts created"

10.times do |post|
  Post.create!(title: "My Movie #{post}",
              body: "This is some movie information and I am going to show it all to you",
              status: 0,
              image: "http://via.placeholder.com/350x200",
              user_id: @admin.id
              )
end
puts "10 Admin posts created"
