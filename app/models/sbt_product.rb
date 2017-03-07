class SbtProduct < ActiveRecord::Base
 # validates :article, :name, :price, :tax_rate, presence: true

  validates :tax_rate, tax: true

end
