class AddValueCoupon < ActiveRecord::Migration
  def change
    add_column :coupons, :value_coupon, :float
  end
end
