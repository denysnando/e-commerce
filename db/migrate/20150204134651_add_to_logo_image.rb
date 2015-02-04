class AddToLogoImage < ActiveRecord::Migration
  def change
    add_column :logos, :logo_image_id, :integer, references: :logo_images
  end
end
