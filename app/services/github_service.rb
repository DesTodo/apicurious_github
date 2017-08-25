class GithubService

  # @followers = github_service.get_followers
  # @following = github_service.get_following
  # @num_starred_repos = github_service.get_starred_repos
  # @profile_picture = github_service.get_profile_picture
  # @recent_activity = github_service.get_recent_activity
  # @organizations = github_service.get_organizations

  def initialize(user=current_user)
   @user = user
   @conn = Faraday.new(url: "https://api.github.com")
  end

  def response
    response = @conn.get
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def get_url(url)
    url_prefix = @conn.url_prefix #+ "/users/#{current_user.username}"
    profile_attribute = @conn.get(url_prefix + url)
    JSON.parse(profile_attribute.body, symbolize_names: true)
  end

  def get_user_followers
    #response[:followers_url] can't use prefix
    followers = get_url("/users/#{@user.username}/followers")
    #format in view
    #followers = Faraday.get("https://api.github.com/users/#{current_user.username}/followers")
    #follower_usernames = JSON.parse(followers.body, symbolize_names: :true)[0][:login]
    #follower_urls = JSON.parse(followers.body, symbolize_names: :true)[0][:url]
  end

  def get_user_following
    following = get_url("/users/#{@user.username}/following")
    #following = Faraday.get("https://api.github.com/users/#{current_user.username}/following")
    # usernames_following = JSON.parse(following.body, symbolize_names: :true)[0][:login]
    # urls_following = JSON.parse(followers.body, symbolize_names: :true).map{|i| i[:url]}
  end

  # def get_profile_attributes
  #   response = Faraday.get("https://api.github.com/users/#{current_user.username}")
  #   attributes = JSON.parse(response.body, symbolize_names: :true)
  # end

  def get_starred_repos
    starred = get_url("/users/#{@user.username}/starred").count
    #starred = Faraday.get("https://api.github.com/users/#{current_user.username}/starred")
    #attributes[:num_starred_repos] = JSON.parse(starred.body).count
    #{names_starred_repos: => JSON.parse(starred_repos.body, symbolize_names: :true)[0][:name]}
  end

  def get_user_activity
    # activity = JSON.parse(Faraday.get("https://api.github.com/users/#{current_user.username}/events?").body, symbolize_names: :true)[0][:payload]
    # attributes[:recent_activity] = JSON.parse(activity.body)
    # return attributes[:recent_activity]
    #activity = JSON.parse(Faraday.get("https://api.github.com/users/#{current_user.username}/orgs").body, symbolize_names: :true)
    activity = get_url("/users/#{@user.username}/events")
    collection = []
    activity.cycle(1){|i| collection << i if i[:type] == "PushEvent"}
    commits = collection.map{|i| i[:payload][:commits]}
    messages = commits.flatten.map{|i| puts i[:message]}
  end

  def get_user_organizations
    get_url("/users/#{@user.username}/orgs")
    # orgs.collect do |i| p i[:login] p i[:description] end
  end

  def self.get_attributes
    new(all_attributes)
  end

end
