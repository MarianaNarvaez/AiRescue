class Node < ApplicationRecord
    has_many :carbon_dioxide
    has_many :carbon_monoxide
    has_many :ozone
    has_many :humidity
    has_many :temperature
    
    has_attached_file :cover, styles: { medium: "1280x720", thumb:"800x600"}
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
end
