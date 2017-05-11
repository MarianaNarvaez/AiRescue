class Node < ApplicationRecord
    has_many :carbon_dioxide
    has_many :carbon_monoxide
    has_many :ozone
    has_many :humidity
    has_many :temperature
end
