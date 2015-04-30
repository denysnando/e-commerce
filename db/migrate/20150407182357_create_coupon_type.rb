class CreateCouponType < ActiveRecord::Migration
  def change
    create_table :coupon_types do |t|
      t.string :name
    end
  end
end
