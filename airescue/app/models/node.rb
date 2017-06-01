class Node < ApplicationRecord
    has_many :carbon_dioxide, dependent: :destroy
    has_many :carbon_monoxide, dependent: :destroy
    has_many :ozone, dependent: :destroy
    has_many :humidity, dependent: :destroy
    has_many :temperature, dependent: :destroy
    has_many :nitrogen, dependent: :destroy
    has_many :dust, dependent: :destroy
    
    has_attached_file :cover, styles: { medium: "780x490", thumb:"800x600"}
    validates_attachment_content_type :cover, content_type: /\Aimage\/.*\Z/
    
    validates :name, presence: {:message => "Usted debe ingresar un nombre"}, 
        length: {minimum: 2, maximum: 50, :message => "El título debe tener entre 
                2 y 50 caracteres"}
    validates :address, presence: {:message => "Usted debe ingresar un Dirección"}
    validates :description, presence: {:message => "Usted debe ingresar una descripción"}
end
