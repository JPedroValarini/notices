class CustomersController < ApplicationController
  include Accessible
  
  def index
    @customers = Customer.order(id: :desc)
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(form_params)

    if @customer.save
      redirect_to customer_customers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    params = form_params.to_h
    params = params.except!(:password, :password_confirmation) if params[:password].blank?

    if @customer.update(params)
      redirect_to customer_customers_path
    else
      render :edit
    end
  end

  def destroy
    @customer.destroy
    redirect_to customer_customers_path
  end

  private

  def form_params
    params.require(:customer).permit(:name, :email, :password, :password_confirmation)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end

end