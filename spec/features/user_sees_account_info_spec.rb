require 'rails_helper'
#testing the view
feature "user sees account info" do
  #context "user is redirected to profile page" do

    def stub_omniauth
    # first, set OmniAuth to run in test mode
      OmniAuth.config.test_mode = true
    # then, provide a set of fake oauth data that
    # omniauth will use when a user tries to authenticate:
      OmniAuth.config.mock_auth[:github] = OmniAuth::AuthHash.new(
                                          { uid: "12345678910",
                                            'extra' => {'raw_info' => {'screen_name' => 'my_screen_name'}},
                                            'credentials' => {token: 'mock_token', secret: 'mock_secret'}})
    end

    it "can see profile" do
      stub_omniauth
      visit '/my-profile'

      expect(current_path).to eq('/my-profile')
      expect(page).to have_content(profile.repos) # @repos
      expect(page).to have_content(profile.starred_repos_number)
      expect(page).to have_content(profile.number_following)
      expect(page).to have_content(profile.number_followers)

  end
end
