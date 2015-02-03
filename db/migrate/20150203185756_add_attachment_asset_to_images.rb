class AddAttachmentAssetToImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.attachment :asset
      t.integer :product_id, references: :products
    end
  end

  def self.down
    remove_attachment :images, :asset
  end
end
