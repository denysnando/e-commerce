class AddColumnToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :skype, :string
    add_column :companies, :email, :string
  end
end
