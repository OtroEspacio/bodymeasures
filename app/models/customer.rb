class Customer < ActiveRecord::Base
  belongs_to :user
  has_many :body_measures
end
