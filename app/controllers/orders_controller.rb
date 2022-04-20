class OrdersController < ApplicationController
  before_action :set_order, only: %i[ show edit update destroy ]
  before_action :set_items_array, only: %i[ edit update new create ]
  before_action :join_order_date_string, only: %i[ create ]
  before_action :get_customer_id_by_email, only: %i[ create ]

  # GET /orders or /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1 or /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders or /orders.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to order_url(@order), notice: "Order was successfully created." }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1 or /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_url(@order), notice: "Order was successfully updated." }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1 or /orders/1.json
  def destroy
    @order.destroy

    respond_to do |format|
      format.html { redirect_to orders_url, notice: "Order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:order_date, :total_price, :status, :customer_id, carts_attributes: [:item_id, :quantity, :_destroy])
    end

    def set_items_array
      @items = Item.all
    end

    def join_order_date_string
      order_date = [ params[:order]['order_date(1i)'], params[:order]['order_date(2i)'], params[:order]['order_date(3i)'] ].join("-")
      params[:order][:order_date] = order_date
    end

    def get_customer_id_by_email
      if Customer.exists?(email: params[:order][:email])
        params[:order][:customer_id] = Customer.find_by(email: params[:order][:email]).id
      else
        @new_customer = Customer.new(name: params[:order][:name], email: params[:order][:email])
        if @new_customer.save
          params[:order][:customer_id] = @new_customer.id
        else
          params[:order][:customer_id] = -1
        end
      end
    end
end
