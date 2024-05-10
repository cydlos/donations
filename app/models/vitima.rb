class Vitima < ApplicationRecord
  has_many :conexoes
  has_many :doadores, through: :conexoes
end


