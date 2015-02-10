class Image < ActiveRecord::Base
  belongs_to :product, inverse_of: :images

  has_attached_file :asset,
  :styles => {
   :thumb => "100x100#",
   :small  => "150x150>",
   :medium => "200x200",
   :high => "600x600>" }
   validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/

   attr_accessor :delete_asset
   before_validation { self.asset.clear if self.delete_asset == '1' }

   rails_admin do
    visible false
   end
end
