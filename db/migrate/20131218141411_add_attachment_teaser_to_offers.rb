class AddAttachmentTeaserToOffers < ActiveRecord::Migration
  def self.up
    change_table :offers do |t|
      t.attachment :teaser
    end
  end

  def self.down
    drop_attached_file :offers, :teaser
  end
end
