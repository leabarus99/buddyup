class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    @Customer.save

    redirect_to customer_path(@customer)
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)

    redirect_to customer_path(@customer)
  end

  private

  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :age, :photo, :location,
                                    :event_category, :hobby, :personality, :event_date)
  end
end
