class Department < ApplicationRecord
    has_many :city
    has_many :client
end
