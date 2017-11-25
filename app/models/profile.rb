class Profile
  attr_reader :followers,
              :following,
              :profile_picture,
              :num_starred_repos,
              :recent_activity,
              :organizations,
              :github_attributes

  def initialize(current_user)
    @github_attributes = GithubService.new(current_user)
    # @followers = github_attributes.get_user_followers
    # @following = github_attributes.get_user_following
    # @num_starred_repos = github_attributes.get_starred_repos
    @profile_picture = current_user.profile_picture
    # @recent_activity = github_attributes.get_user_activity
    @organizations = github_attributes.get_user_organizations
  end

  def following
    response_hash = @github_attributes.get_user_following
    response_hash.map {|user| user[:login] }
  end

  def activity
    recent_activity = @github_attributes.get_user_activity
    recent_activity.map {|action| action[:type]}
  end

  def followers
    followers = @github_attributes.get_user_followers
    followers.map {|user| user[:login]}
  end

  def num_starred_repos
    @github_attributes.get_starred_repos.count
  end
end
