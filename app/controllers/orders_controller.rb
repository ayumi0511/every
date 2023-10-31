class OrdersController < ApplicationController
  def index
    render "orders/index"
  end

  def assets
    path = params[:path]
    send_file Rails.root.join('app/assets/images', path)
  end
end
