class CreateProduct < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text   :description
      t.float  :price
    end
  end
end
