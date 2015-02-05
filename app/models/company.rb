class Company < ActiveRecord::Base
  belongs_to :logo_image

  accepts_nested_attributes_for :logo_image, :allow_destroy => true

  rails_admin do
    navigation_label 'Cadastros'
  end
end
