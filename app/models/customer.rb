class Customer < ActiveRecord::Base
  belongs_to :user
  has_many :body_measures

  validates :first_name, presence: {message: "Primer nombre es requerido"}
  validates :email, presence: {message: "Correo electrónico es requerido"}

  accepts_nested_attributes_for :body_measures, allow_destroy: true
end
