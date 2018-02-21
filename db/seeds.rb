10.times do |post|
  Post.create!(title: "My Post #{post}", body: "This is some great text information and I am going to show it all to you")
end
puts "10 posts created"
