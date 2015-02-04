class CreateLogo < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :name
      t.integer :image_id, :references => :image
    end
  end
end
