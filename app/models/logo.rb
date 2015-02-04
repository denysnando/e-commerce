class Logo < ActiveRecord::Base
  belongs_to :logo_image

  accepts_nested_attributes_for :logo_image, :allow_destroy => true

  rails_admin do
    edit do
      field :name
      field :logo_image
    end
  end
end
