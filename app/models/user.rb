class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  belongs_to :purchase_order

  rails_admin do
   navigation_label 'Cadastros'
   list do
     field :id
     field :name
     field :email
     field :last_sign_in_at
     field :admin
   end
   edit do
     field :name
     field :email
     field :password
     field :password_confirmation
     field :cpf
     field :zipcode
     field :state
     field :city
     field :street
     field :district
     field :number
     field :complement
     field :fone
     field :mobile
     field :admin
   end
  end
end
