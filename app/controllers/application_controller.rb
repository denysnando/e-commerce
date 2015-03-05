class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
    @current_purchase_order ||= if session[:purchase_order_id]
      PurchaseOrder.find(session[:purchase_order_id])
    else
      purchase_order = PurchaseOrder.where(status: 'Aberto').first
      if purchase_order.id.nil?
        purchase_order = PurchaseOrder.create(user_id: current_user.id)
      end
      session[:purchase_order_id] = purchase_order.id
      purchase_order
    end
  end
end
