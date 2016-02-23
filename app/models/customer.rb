class Customer < ActiveRecord::Base
  belongs_to :user
  has_many :body_measures

  accepts_nested_attributes_for :body_measures, allow_destroy: true
end
