conn = Faraday.new('https://api.github.com')

conn.get
=>

body=
"{\"current_user_url\":\"https://api.github.com/user\",\"current_user_authorizations_html_url\":\"https://
github.com/settings/connections/applications{/client_id}\",\"authorizations_url\":\"https://api.github.com/aut
horizations\",\"code_search_url\":\"https://api.github.com/search/code?q={query}{&page,per_page,sort,order}\",
\"commit_search_url\":\"https://api.github.com/search/commits?q={query}{&page,per_page,sort,order}\",\"emails_
url\":\"https://api.github.com/user/emails\",\"emojis_url\":\"https://api.github.com/emojis\",\"events_url\":\
"https://api.github.com/events\",\"feeds_url\":\"https://api.github.com/feeds\",\"followers_url\":\"https://ap
i.github.com/user/followers\",\"following_url\":\"https://api.github.com/user/following{/target}\",\"gists_url
\":\"https://api.github.com/gists{/gist_id}\",\"hub_url\":\"https://api.github.com/hub\",\"issue_search_url\":
\"https://api.github.com/search/issues?q={query}{&page,per_page,sort,order}\",\"issues_url\":\"https://api.git
hub.com/issues\",\"keys_url\":\"https://api.github.com/user/keys\",\"notifications_url\":\"https://api.github.
com/notifications\",\"organization_repositories_url\":\"https://api.github.com/orgs/{org}/repos{?type,page,per
_page,sort}\",\"organization_url\":\"https://api.github.com/orgs/{org}\",\"public_gists_url\":\"https://api.gi
thub.com/gists/public\",\"rate_limit_url\":\"https://api.github.com/rate_limit\",\"repository_url
\"repository_url\":\"https://
api.github.com/repos/{owner}/{repo}\",\"repository_search_url\":\"https://api.github.com/search/repositories?q
={query}{&page,per_page,sort,order}\",\"current_user_repositories_url\":\"https://api.github.com/user/repos{?t
ype,page,per_page,sort}\",\"starred_url\":\"https://api.github.com/user/starred{/owner}{/repo}\",\"starred_gis
ts_url\":\"https://api.github.com/gists/starred\",\"team_url\":\"https://api.github.com/teams\",\"user_url\":\
"https://api.github.com/users/{user}\",\"user_organizations_url\":\"https://api.github.com/user/orgs\",\"user_
repositories_url\":\"https://api.github.com/users/{user}/repos{?type,page,per_page,sort}\",\"user_search_url\"
:\"https://api.github.com/search/users?q={query}{&page,per_page,sort,order}\"}",

url=#<URI::HTTPS https://api.github.com/>,
   request=
    #<struct Faraday::RequestOptions
 request_headers={"User-Agent"=>"Faraday v0.13.1"},
 response_headers=

     {"server"=>"GitHub.com",
      "date"=>"Thu, 24 Aug 2017 03:57:58 GMT",
      "content-type"=>"application/json; charset=utf-8",
      "transfer-encoding"=>"chunked",
      "connection"=>"close",
      "status"=>"200 OK",
      "x-ratelimit-limit"=>"60",
      "x-ratelimit-remaining"=>"42",
      "x-ratelimit-reset"=>"1503548475",
      "cache-control"=>"public, max-age=60, s-maxage=60",
      "vary"=>"Accept",
      "etag"=>"W/\"7dc470913f1fe9bb6c7355b50a0737bc\"",
      "x-github-media-type"=>"github.v3; format=json",
      "access-control-expose-headers"=>
       "ETag, Link, X-GitHub-OTP, X-RateLimit-Limit, X-RateLimit-Remaining, X-RateLimit-Reset, X-OAuth-Scopes,
 X-Accepted-OAuth-Scopes, X-Poll-Interval",
      "access-control-allow-origin"=>"*",
      "content-security-policy"=>"default-src 'none'",
      "strict-transport-security"=>"max-age=31536000; includeSubdomains; preload",
      "x-content-type-options"=>"nosniff",
      "x-frame-options"=>"deny",
      "x-xss-protection"=>"1; mode=block",
      "x-runtime-rack"=>"0.007831",
      "x-github-request-id"=>"C99F:62F6:B95113:1918596:599E4EC6"},
    status=200,
    reason_phrase="OK">,
 Git
 GitHub (preview)
 Log in to GitHub to access PR information and more!

 Login
 app/controllers/url.rb32:52
 LFUTF-8Ruby
 user-story-210 files1 update
 response_body = JSON.parse(conn.get.body)
=> {"current_user_url"=>"https://api.github.com/user",
 "current_user_authorizations_html_url"=>"https://github.com/settings/connections/applications{/client_id}",
 "authorizations_url"=>"https://api.github.com/authorizations",
 "code_search_url"=>"https://api.github.com/search/code?q={query}{&page,per_page,sort,order}",
 "commit_search_url"=>"https://api.github.com/search/commits?q={query}{&page,per_page,sort,order}",
 "emails_url"=>"https://api.github.com/user/emails",
 "emojis_url"=>"https://api.github.com/emojis",
 "events_url"=>"https://api.github.com/events",
 "feeds_url"=>"https://api.github.com/feeds",
 "followers_url"=>"https://api.github.com/user/followers",
 "following_url"=>"https://api.github.com/user/following{/target}",
 "gists_url"=>"https://api.github.com/gists{/gist_id}",
 "hub_url"=>"https://api.github.com/hub",
 "issue_search_url"=>"https://api.github.com/search/issues?q={query}{&page,per_page,sort,order}",
 "issues_url"=>"https://api.github.com/issues",
 "keys_url"=>"https://api.github.com/user/keys",
 "notifications_url"=>"https://api.github.com/notifications",
 "organization_repositories_url"=>"https://api.github.com/orgs/{org}/repos{?type,page,per_page,sort}",
 "organization_url"=>"https://api.github.com/orgs/{org}",
 "public_gists_url"=>"https://api.github.com/gists/public",
 "rate_limit_url"=>"https://api.github.com/rate_limit",
 "repository_url"=>"https://api.github.com/repos/{owner}/{repo}",
 "repository_search_url"=>"https://api.github.com/search/repositories?q={query}{&page,per_page,sort,order}",
 "current_user_repositories_url"=>"https://api.github.com/user/repos{?type,page,per_page,sort}",
 "starred_url"=>"https://api.github.com/user/starred{/owner}{/repo}",
 "starred_gists_url"=>"https://api.github.com/gists/starred",
 "team_url"=>"https://api.github.com/teams",
 "user_url"=>"https://api.github.com/users/{user}",
 "user_organizations_url"=>"https://api.github.com/user/orgs",
 "user_repositories_url"=>"https://api.github.com/users/{user}/repos{?type,page,per_page,sort}",
 "user_search_url"=>"https://api.github.com/search/users?q={query}{&page,per_page,sort,order}"}

 response_body = JSON.parse(conn.get.body, symbolize_names: :true)
=> {:current_user_url=>"https://api.github.com/user",
 :current_user_authorizations_html_url=>"https://github.com/settings/connections/applications{/client_id}",
 :authorizations_url=>"https://api.github.com/authorizations",
 :code_search_url=>"https://api.github.com/search/code?q={query}{&page,per_page,sort,order}",
 :commit_search_url=>"https://api.github.com/search/commits?q={query}{&page,per_page,sort,order}",
 :emails_url=>"https://api.github.com/user/emails",
 :emojis_url=>"https://api.github.com/emojis",
 :events_url=>"https://api.github.com/events",
 :feeds_url=>"https://api.github.com/feeds",
 :followers_url=>"https://api.github.com/user/followers",
 :following_url=>"https://api.github.com/user/following{/target}",
 :gists_url=>"https://api.github.com/gists{/gist_id}",
 :hub_url=>"https://api.github.com/hub",
 :issue_search_url=>"https://api.github.com/search/issues?q={query}{&page,per_page,sort,order}",
 :issues_url=>"https://api.github.com/issues",
 :keys_url=>"https://api.github.com/user/keys",
 :notifications_url=>"https://api.github.com/notifications",
 :organization_repositories_url=>"https://api.github.com/orgs/{org}/repos{?type,page,per_page,sort}",
 :organization_url=>"https://api.github.com/orgs/{org}",
 :public_gists_url=>"https://api.github.com/gists/public",
 :rate_limit_url=>"https://api.github.com/rate_limit",
 :repository_url=>"https://api.github.com/repos/{owner}/{repo}",
 :repository_search_url=>"https://api.github.com/search/repositories?q={query}{&page,per_page,sort,order}",
 :current_user_repositories_url=>"https://api.github.com/user/repos{?type,page,per_page,sort}",
 :starred_url=>"https://api.github.com/user/starred{/owner}{/repo}",
 :starred_gists_url=>"https://api.github.com/gists/starred",
 :team_url=>"https://api.github.com/teams",
 :user_url=>"https://api.github.com/users/{user}",
 :user_organizations_url=>"https://api.github.com/user/orgs",
 :user_repositories_url=>"https://api.github.com/users/{user}/repos{?type,page,per_page,sort}",
 :user_search_url=>"https://api.github.com/search/users?q={query}{&page,per_page,sort,order}"}


 response = Faraday.get("https://api.github.com/users/#{current_user.username}?client_id=#{ENV["github-key"]}&client_secret=#{ENV["github-secret"]}")
 attributes = JSON.parse(response.body, symbolize_names: :true)

 starred = Faraday.get("https://api.github.com/users/#{current_user.username}/starred?client_id=#{ENV["github-key"]}&client_secret=#{ENV["github-secret"]}")
 attributes[:num_starred_repos] = JSON.parse(starred.body).count

 activity = Faraday.get("https://api.github.com/users/#{current_user.username}/events?client_id=#{ENV["github_client_id"]}&client_secret=#{ENV["github_client_secret"]}")
 attributes[:recent_activity] = JSON.parse(activity.body)

 @user = User.new(attributes)
