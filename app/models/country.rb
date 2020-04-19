class Country < ApplicationRecord
    has_many :departments
    has_many :clients
end
