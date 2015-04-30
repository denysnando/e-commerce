class AddJoinCupon < ActiveRecord::Migration
  def change
    add_column :coupons, :coupon_type_id, :integer, references: :coupon_types
  end
end
