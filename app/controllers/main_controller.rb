class MainController < ApplicationController
  def index
  
  end
  def all_info
  end
  def add_order
    Order.new do |o|
      o.datetime = Time.now
      o.active = true
      o.save
    end
    redirect_to :action => :index
  end
  def order
    @order = Order.find_by_id(session[:order]) if session[:order] != nil
    @order = Order.find_by_id(params[:order_id]) if params[:order_id] != nil
    if @order == nil
      flash[:error] = "ההזמנה לא נמצאה"
      redirect_to :action => :index
    end
    session[:order] = @order.id
  end
  def add_pizza
    Pizza.new do |p|
      p.order = Order.find_by_id(params[:pizza][:order])
      p.user = User.find_by_name(params[:pizza][:user])
      p.slices = params[:pizza][:slices].to_i
      p.save
    end
    redirect_to :action => :order
  end
  def delete_pizza
    pizza = Pizza.find_by_id(params[:id])
    pizza.destroy
    redirect_to :action => :order
  end
end
