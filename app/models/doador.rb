class Doador < ApplicationRecord
  has_many :conexoes
  has_many :vitimas, through: :conexoes
end
