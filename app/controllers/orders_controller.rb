class OrdersController < ApplicationController
  def index
    @orders = Order.confirmed
  end

  def show
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to confirm_order_path(@order)
    else
      render 'new'
    end
  end

  def edit
    @order = Order.find(params[:id])
    @order.update(confirmed: false)
  end

  def update
    @order = Order.find(params[:id])

    if @order.update_attributes(order_params)
      redirect_to confirm_order_path(@order)
    else
      render 'edit'
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
