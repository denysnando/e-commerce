class PurchaseOrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    if params[:status]
      @purchase_orders = PurchaseOrder.where(status: params[:status])
    else
      @purchase_orders = PurchaseOrder.all
    end
  end

  def show
    @purchase_order = PurchaseOrder.find(params[:id])
  end

  def update
    @purchase_order = PurchaseOrder.find(params[:id])

    respond_to do |format|
      if @purchase_order.update_attributes(purchase_params.merge(user_id: current_user.id))
        format.html { redirect_to @purchase_order}
      else
        format.html { render action: "edit" }
      end
    end
  end

  private
  def purchase_params
    params.require(:purchase_order).permit(:user_id, :total_price, :status, :open_at,
                                           :closed_at, :canceled_at, :transport_at,
                                           :created_at, :updated_at,
                                           purchase_order_items_attributes:
                                           [:product_id, :amount, :sub_total_price,
                                           :purchase_order_id, :_destroy, :id])
  end
end
