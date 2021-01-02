class ReposController < ApplicationController
  def public_repos
    conn = Faraday.new(url: 'https://api.github.com')

    response = conn.get("/users/Eternal-Flame085/repos")
    @repos = JSON.parse(response.body, symbolize_names: true)
  end

  def private_repos
    conn = Faraday.new(
      url: 'https://api.github.com',
      headers: {
        'Authorization': "token #{current_user.token}"
      }
    )
    response = conn.get("/user/repos") do |req|
      req.params['type'] = 'private'
    end

    @repos = JSON.parse(response.body, symbolize_names: true)
  end
end
