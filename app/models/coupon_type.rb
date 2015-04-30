class CouponType < ActiveRecord::Base
  belongs_to :coupon

  def to_s
    name
  end

  rails_admin do
    visible false
  end
end
