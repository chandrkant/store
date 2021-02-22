class CardsController < ApplicationController
  def show
    @order_items = current_order.order_items
  end
  def success_page
    @order_items = current_order.order_items
    @order_items.destroy
    session[:order_id] = nil
  end
end
