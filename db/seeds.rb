# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@category = Category.create(name: "Cool")
@category1 = Category.create(name: "doom")
@category2 = Category.create(name: "gloom")
@post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
@post.categories << @category
@user = User.create(username: 'RealBigFish')
@comment = Comment.create(content: "This was great!", user: @user, post: @post)
@post1 = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
@user1 = User.create(username: 'CoolGuy5')
@comment1 = @post1.comments.build(content: "Great Post!", user: @user1)
@comment1.save
@post1.save
