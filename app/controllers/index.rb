enable :sessions

get '/' do
  @posts = Post.all 
  erb :index
end

# before do
#   pass if ["/", "/users/sign_up", "/users/login", "/users/:user_id"].include?request.path
#   redirect '/' unless logged_in?
# end

get "/users/login" do
	erb :login
end

post '/users/sign_up' do
  @user = User.create(params[:user])
  session[:user_id] = @user.id
  redirect to "/"
end

post '/users/login' do
  @user = User.authenticate(params[:user][:username], params[:user][:password])
  if @user
    session[:user_id] = @user.id
    redirect to "/"
  else
    redirect to '/'
  end
end

delete '/logout' do
  session.clear
  redirect to '/'
end

get '/users/:user_id' do
	@user = User.find(params[:user_id])
	erb :user
end

get '/posts/:post_id/comments' do
	@post = Post.find(params[:post_id])
	@comments = @post.comments
	erb :comments
end

post '/submit' do
	@user = User.find(session[:user_id])
	@submit = @user.posts.create(params[:post])
	redirect to "/"
end

post '/ajaxpost' do
	@post = Post.new(params[:post])
	@post.user_id = session[:user_id]
	if @post.save
		@post.title
	end
end