class Customer < ActiveRecord::Base
  attr_accessible :address, :codice_fiscale, :email, :mobtel, :name, :partita_iva, :tel
  has_many :projects
end
