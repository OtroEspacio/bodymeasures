class CustomersController < ApplicationController
  before_action :get_customer, only: [:show, :edit, :update]
  
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
    @customer.body_measures.build
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to customers_path
    else
      render 'new'
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  private

    def get_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(
        :first_name, :second_name, :last_names, :email, :phone_number,
        :user_id, :status, 

        body_measures_attributes: [
          :id, :customer_id, :talla_blusa, :talla_pantalon, :talla_delantero,
          :talle_trasero, :espalda, :hombro, :c_de_busto, :al_de_busto,
          :s_de_busto, :m_inf_de_busto, :cintura, :m_de_cadera,
          :l_de_manga_pecho, :c_de_manga_pecho, :l_de_m_corta,
          :c_de_m_corta, :l_de_manga_3_4, :c_de_manga_3_4,
          :l_de_blusa, :escote, :l_de_rodilla, :c_de_rodilla, :l_de_t,
          :l_total, :c_de_bota, :nota, :_destroy
        ]
      )
    end
end
