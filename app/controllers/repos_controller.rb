class ReposController < ApplicationController
  def public_repos
    response = GithubService.get_public_repos(current_user)
    @repos = JSON.parse(response.body, symbolize_names: true)
  end

  def private_repos
    response = GithubService.get_private_repos(current_user)
    @repos = JSON.parse(response.body, symbolize_names: true)
  end
end
