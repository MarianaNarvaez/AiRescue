class Node < ApplicationRecord
    has_many :carbon_dioxide, dependent: :destroy
    has_many :carbon_monoxide, dependent: :destroy
    has_many :ozone, dependent: :destroy
    has_many :humidity, dependent: :destroy
    has_many :temperature, dependent: :destroy
    
    
    has_attached_file :cover, styles: { medium: "780x490", thumb:"800x600"}
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
    
    validates :name, presence: true
    validates :address, presence: true
    validates :description, presence: true
end
