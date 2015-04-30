class CreateCoupon < ActiveRecord::Migration
  def change
    create_table :coupons do |t|
      t.string  :code
      t.string  :value_min
      t.date    :expiration_date
      t.integer :amount_used
      t.integer :amount_use
    end
  end
end
