class CustomersController < ApplicationController


    def index
        @customers = Customer.all
    end

    def show
        @customer = Customer.find(params[:id])
        @company = Company.find(params[:company_id])
    end

    def new
        @customer = Customer.new
        @company = Company.find(params[:company_id])
    end

    def create
        @customer = Customer.new(customer_params)
        @customer.company_id = params[:company_id]
        @company = Company.find(params[:company_id])
        if @customer.save
            redirect_to company_customers_path
        else
            render :new
        end
    end

    private

    def customer_params
        params.require(:customer).permit(:name, :description, :company_id)
    end
end
