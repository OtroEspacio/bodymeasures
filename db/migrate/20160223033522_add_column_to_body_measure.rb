class AddColumnToBodyMeasure < ActiveRecord::Migration
  def change
    add_column :body_measures, :talla_blusa, :string
    add_column :body_measures, :talla_pantalon, :string
    add_column :body_measures, :talla_delantero, :string
    add_column :body_measures, :talle_trasero, :string
    add_column :body_measures, :espalda, :string
    add_column :body_measures, :hombro_c_de_busto, :string
    add_column :body_measures, :hombro_al_de_busto, :string
    add_column :body_measures, :hombro_s_de_busto, :string
    add_column :body_measures, :hombro_m_inf_de_busto, :string
    add_column :body_measures, :cintura_m_de_cadera, :string
    add_column :body_measures, :cintura_l_de_manga_pecho, :string
    add_column :body_measures, :cintura_c_de_manga_pecho, :string
    add_column :body_measures, :cintura_l_de_m_corta, :string
    add_column :body_measures, :cintura_c_de_m_corta, :string
    add_column :body_measures, :cintura_l_de_manga_3_4, :string
    add_column :body_measures, :cintura_c_de_manga_3_4, :string
    add_column :body_measures, :cintura_l_de_blusa, :string
    add_column :body_measures, :escote_l_de_rodilla, :string
    add_column :body_measures, :escote_c_de_rodilla, :string
    add_column :body_measures, :escote_l_de_t, :string
    add_column :body_measures, :escote_l_total, :string
    add_column :body_measures, :escote_c_de_bota, :string
    add_column :body_measures, :nota, :text
  end
end
