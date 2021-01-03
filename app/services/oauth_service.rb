class OauthService
  def self.conn
    Faraday.new(url: 'https://github.com', headers: {'Accept': 'application/json'})
  end

  def self.user_conn(access_token)
    Faraday.new(
    url: 'https://api.github.com',
      headers: {
        'Authorization': "token #{access_token}"
      }
    )
  end

  def self.get_access_token(code)
    client_id = '2901152965a92c3b41d2'
    client_secret = '259d58cb469d6b1519fa857c8375833da1d637f7'

    conn.post('/login/oauth/access_token') do |req|
      req.params['code'] = code
      req.params['client_id'] = client_id
      req.params['client_secret'] = client_secret
    end
  end

  def self.get_user(access_token)
    user_conn(access_token).get('/user')
  end
end
