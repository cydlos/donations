class Conexao < ApplicationRecord
  belongs_to :vitima
  belongs_to :doador
end
