class Customer < ActiveRecord::Base
has_many :invoices
#has_many :jobs :through=> :invoice
end
