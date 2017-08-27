class GithubService

  def initialize(user)
   @user = user
   @conn = Faraday.new(url: "https://api.github.com")
  end

  def response
    response = @conn.get
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def get_url(url)
    url_prefix = @conn.url_prefix
    profile_attribute = @conn.get(url_prefix + url)
    JSON.parse(profile_attribute.body, symbolize_names: true)
  end

  def get_user_followers
    binding.pry
    followers = get_url("/users/#{@user.username}/followers")
  end

  def get_user_following
    following = get_url("/users/#{@user.username}/following")
  end

  def get_starred_repos
    starred = get_url("/users/#{@user.username}/starred")
  end

  def get_user_activity
    activity = get_url("/users/#{@user.username}/events")
  end

  def get_user_organizations
    get_url("/users/#{@user.username}/orgs")
  end
end
