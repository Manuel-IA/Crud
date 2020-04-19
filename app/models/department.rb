class Department < ApplicationRecord
    has_many :citys
    has_many :clients
end
