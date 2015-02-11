class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :cpf, :string
    add_column :users, :zipcode, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :street, :string
    add_column :users, :district, :string
    add_column :users, :number, :string
    add_column :users, :complement, :string
    add_column :users, :fone, :string
    add_column :users, :mobile, :string
    add_column :users, :admin, :boolean, default: false
  end
end
