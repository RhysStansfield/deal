class AddAvatarToOffer < ActiveRecord::Migration
  def self.up
    add_attachment :offers, :avatar
  end

  def self.down
    remove_attachment :offers, :avatar
  end
end
