class AddColumnToImagesBanner < ActiveRecord::Migration
  def change
    add_column :images, :banner_id, :integer,references: :banners
  end
end
