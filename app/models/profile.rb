class Profile
  attr_reader :followers,
              :following,
              :profile_picture,
              :num_starred_repos,
              :recent_activity,
              :organizations

  def initialize(user)
    github_attributes = GithubService.new(user)
    @followers = github_attributes.get_user_followers
    @following = github_attributes.get_user_following
    @num_starred_repos = github_attributes.get_starred_repos
    @profile_picture = user.profile_picture
    @recent_activity = github_attributes.get_user_activity
    @organizations = github_attributes.get_user_organizations
  end
end
