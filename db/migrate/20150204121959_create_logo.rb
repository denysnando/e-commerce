class CreateLogo < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :name
    end
  end
end
