class Coupon < ActiveRecord::Base
  belongs_to :coupon_type

  rails_admin do
    navigation_label 'Cadastros'
    list do
      field :code
      field :value_coupon
      field :coupon_type
      field :value_min
      field :expiration_date
      field :amount_use
      field :amount_used
    end
    edit do
      field :code
      field :value_coupon
      field :coupon_type
      field :value_min
      field :expiration_date
      field :amount_use
    end
  end
end
