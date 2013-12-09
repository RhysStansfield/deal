class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => {
    thumb: '100x100>', tiny: '40x40>'
  }

  def follow(business)
    unless business.customers.include? self
      business.customers << self
    else
      business.customers.delete(self)
    end 
  end

end
