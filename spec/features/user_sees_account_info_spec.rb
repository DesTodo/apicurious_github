require 'rails_helper'
#testing the view
feature "user sees account info" do
  context "user is redirected to profile page" do
    it "can see profile" do
      visit '/my-profile'

      expect(current_path).to eq('/my-profile')
      expect(page).to have_content(profile.repos) # @repos
      expect(page).to have_content(profile.starred_repos_number)
      expect(page).to have_content(profile.number_following)
      expect(page).to have_content(profile.number_followers)
    end
  end
end
