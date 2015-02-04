class CreateBanner < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :name
    end
  end
end
