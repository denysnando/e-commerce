class AddAttachmentAssetToLogoBanners < ActiveRecord::Migration
  def self.up
    create_table :logo_images do |t|
      t.attachment :asset
    end
  end

  def self.down
    remove_attachment :logo_banners, :asset
  end
end
