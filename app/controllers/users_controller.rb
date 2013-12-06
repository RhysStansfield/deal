class UsersController < ApplicationController

  def show
    @users = User.all
    @users.select do |user|
      user.type == :Business
    end
  end

end
