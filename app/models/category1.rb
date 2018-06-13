class Category1 < ApplicationRecord
  has_many :tins
  has_many :category2s
end
