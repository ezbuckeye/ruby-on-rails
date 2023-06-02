class Api::V1::Pet < ApplicationRecord
    validates :name, presence: true
    validates :status, presence: true
end
