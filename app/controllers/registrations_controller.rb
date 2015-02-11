class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password,
                                 :cpf, :zipcode, :state, :city, :street, :district, :number, :complement,
                                 :fone, :mobile)
  end
end
