class OrdersController < ApplicationController
  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to confirm_order_path(@order)
    end
  end

  def confirm
    @order = Order.find(params[:id])
  end

  def thank_you
    @order = Order.find(params[:id])
    @order.confirm
  end

  private

  def order_params
    params.require(:order).permit!
  end
end
