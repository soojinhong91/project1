class Animal < ApplicationRecord
  belongs_to :center, :optional => true
end
