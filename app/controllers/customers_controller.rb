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
          :talle_trasero, :espalda, :hombro_c_de_busto, :hombro_al_de_busto,
          :hombro_s_de_busto, :hombro_m_inf_de_busto, :cintura_m_de_cadera,
          :cintura_l_de_manga_pecho, :cintura_c_de_manga_pecho, :cintura_l_de_m_corta,
          :cintura_c_de_m_corta, :cintura_l_de_manga_3_4, :cintura_c_de_manga_3_4,
          :cintura_l_de_blusa, :escote_l_de_rodilla, :escote_c_de_rodilla, :escote_l_de_t,
          :escote_l_total, :escote_c_de_bota, :nota, :_destroy
        ]
      )
    end
end
