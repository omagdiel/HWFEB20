@user = User.create!(email: "test@test.com",
                    first_name: "Test",
                    last_name: "User",
                    password:"asdfasdf",
                    password_confirmation:"asdfasdf",
                    roles: "user"
                    )
puts "1 User created"

10.times do |post|
  Post.create!(title: "My Post #{post}",
              body: "This is some great text information and I am going to show it all to you",
              status: 0,
              user_id: @user.id
              )
end
puts "10 posts created"
