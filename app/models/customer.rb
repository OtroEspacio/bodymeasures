class Customer < ActiveRecord::Base
  belongs_to :user
  has_many :body_measures

  validates :first_name, presence: {message: "Primer nombre es requerido"}
  validates :email, presence: {message: "Correo electrónico es requerido"}

  accepts_nested_attributes_for :body_measures, allow_destroy: true

  def pretty_name
    "#{self.first_name} #{self.last_names}"
  end

  def first_body_measure
    self.body_measures.first
  end

end
