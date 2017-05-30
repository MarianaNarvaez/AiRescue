class Node < ApplicationRecord
    has_many :carbon_dioxide
    has_many :carbon_monoxide
    has_many :ozone
    has_many :humidity
    has_many :temperature
    
    has_attached_file :cover, styles: { medium: "780x490", thumb:"800x600"}
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
    
    validates :name, presence: true
    validates :address, presence: true
    validates :description, presence: true
end
