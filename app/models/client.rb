class Client < ApplicationRecord
    has_one_attached :avatar
    validates :name, presence: true 
    def self.search(search)
        if search
            where ['name LIKE ?', "%#{search}%"]
        else
            all
        end
    end
end
