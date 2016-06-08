get '/users/new' do 
	erb :'/users/new'
end

post '/users' do
	@user = User.new(params[:user])
	if @user.save
		session["user_id"] = @user.id
 		redirect '/users/success'
	else
		@errors = @user.errors.full_messages
		erb :'users/new'
	end
end

get '/users/success' do
	@user = current_user
	if session["user_id"]
		erb :'/users/success'
	else
		redirect '/users/new'
	end
end