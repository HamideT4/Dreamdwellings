class Property < ApplicationRecord

    mount_uploader :photo, PhotoUploader

    belongs_to :agency

    validates :title, :categorie, :description, :price, :localisation,  presence: true

    validates :price, numericality: { greater_than: 0 }

    scope :latest, -> { order created_at: :desc}
end
