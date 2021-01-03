class GithubService
  def self.conn(current_user)
    Faraday.new(
      url: 'https://api.github.com',
      headers: {
        'Authorization': "token #{current_user.token}"
      }
    )
  end

  def self.get_private_repos(current_user)
    conn(current_user).get("/user/repos") do |req|
      req.params['type'] = 'private'
    end
  end

  def self.get_public_repos(current_user)
    conn(current_user).get("/user/repos")do |req|
      req.params['type'] = 'public'
    end
  end
end
