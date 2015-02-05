class CreateCompany < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :nick_name
      t.string :cnpj
      t.string :ie
      t.string :im
      t.string :state
      t.string :city
      t.string :address
      t.string :district
      t.string :zipcode
      t.string :phone1
      t.string :phone2
      t.string :mobile1
      t.string :mobile2
      t.integer :logo_image_id, references: :logo_images
    end
  end
end
