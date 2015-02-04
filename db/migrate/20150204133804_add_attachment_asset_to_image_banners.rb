class AddAttachmentAssetToImageBanners < ActiveRecord::Migration
  def self.up
    create_table :banner_images do |t|
      t.attachment :asset
      t.integer :banner_id, references: :banners
    end
  end

  def self.down
    remove_attachment :image_banners, :asset
  end
end
