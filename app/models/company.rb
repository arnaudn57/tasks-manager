class Company < ApplicationRecord
    has_many :users
    has_many :customers
end
