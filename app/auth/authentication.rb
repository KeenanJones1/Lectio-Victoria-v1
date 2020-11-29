class Authentication
 def initialize(user_object)
  @user_name = user_object[:name]
  @user_email = user_object[:email]
  @password = user_object[:password]
  @user = User.find_by(email: @user_email )
 end

 def authenticate
  @user && @user.authenticate(@password)
 end

 def generate_token
  JsonWebToken.encode(user_id: @user.id)
 end
end