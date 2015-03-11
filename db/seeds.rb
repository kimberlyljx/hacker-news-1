user_1 = User.create(username: "Kim", password: "123")

post_1 = Post.create(title: "Funny Cat Pix", link: "http://www.funnycatpix.com/", user_id: user_1.id )

comment_1 = Comment.create(user_id: user_1.id, post_id: post_1.id, body: "Sho cute")

post_vote_1 = PostVote.create(user_id: user_1.id, post_id: post_1.id)