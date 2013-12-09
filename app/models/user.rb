class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # def follow business_user
  #   User.last.businesses << business_user.last
  # end

  def follow(business)
    unless business.customers.include? self
      business.customers << self
    else
      business.customers.delete(self)
    end 
  end

end
