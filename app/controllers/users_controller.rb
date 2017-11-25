class UsersController < ApplicationController
  def show
    @profile = Profile.new(current_user)
    # binding.pry
  end
end
