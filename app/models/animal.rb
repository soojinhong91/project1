class Animal < ApplicationRecord
  belongs_to :center, :optional => true
  # has_and_belongs_to_many :users
end
