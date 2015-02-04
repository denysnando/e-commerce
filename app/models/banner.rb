class Banner < ActiveRecord::Base
  has_many :banner_images, inverse_of: :banner

  accepts_nested_attributes_for :banner_images, :allow_destroy => true

  rails_admin do
    edit do
      field :name
      field :banner_images
    end
  end
end
