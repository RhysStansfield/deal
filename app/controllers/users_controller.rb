class UsersController < ApplicationController

  def show
    @users = User.all
    @users.select do |user|
      user.type == :Business
    end
  end

  def follow
    Customer.last.businesses << Business.last
    redirect_to '/'
  end

end
