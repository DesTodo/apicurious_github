require 'rails_helper'

feature "user sees account info" do
  context "user is redirected to homepage" do


    visit user_path
  end
end
