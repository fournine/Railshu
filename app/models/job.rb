class Job < ActiveRecord::Base
belongs_to :tipo_iva
belongs_to :invoice
belongs_to :customer
end
