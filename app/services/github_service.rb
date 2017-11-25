class GithubService

  def initialize(current_user)
     @user = current_user
     @conn = Faraday.new('https://api.github.com//my-profile.3') do |faraday|
      #  faraday.headers['Authorization'] = "token #{current_user.oauth_token}"
      #  faraday.headers['Accept'] = "application/vnd.github.cloak-preview"
       faraday.adapter Faraday.default_adapter

     end
   end

  def default_params
    {
      client_id: ENV["github-key"],
      client_secret: ENV["github-secret"]
    }
  end

  def response
    response = @conn.get
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def get_url(url)
    url_prefix = @conn.url_prefix
    profile_attribute = @conn.get(url_prefix + url, default_params)
    JSON.parse(profile_attribute.body, symbolize_names: true)
  end

  def get_user_followers
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
