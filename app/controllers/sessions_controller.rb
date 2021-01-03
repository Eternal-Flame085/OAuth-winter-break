class SessionsController <  ApplicationController
  def create
    response = OauthService.get_access_token(params[:code])

    data = JSON.parse(response.body, symbolize_names: true)
    access_token = data[:access_token]

    response = OauthService.get_user(access_token)
    data = JSON.parse(response.body, symbolize_names: true)

    user          = User.find_or_create_by(uid: data[:id])
    user.username = data[:login]
    user.uid      = data[:id]
    user.token    = access_token
    user.save

    session[:user_id] = user.id

    redirect_to dashboard_path
  end
end
