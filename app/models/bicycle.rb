# == Schema Information
#
# Table name: bicycles
#
#  id               :integer          not null, primary key
#  id_bicy          :integer
#  brand_bicy       :string
#  material_bicy    :string
#  components_bicy  :string
#  price_bicy       :float
#  usetype_bicy     :string
#  description_bicy :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Bicycle < ApplicationRecord
    validates :id_bicy,:brand_bicy, :material_bicy,:components_bicy,:price_bicy, presence: true
    validates :description_bicy, presence: true
    validates :id_bicy, numericality: { only_integer: true }
    validates :price_bicy, numericality: true

    validates :id_bicy,  length: { maximum: 50 }
    validates :brand_bicy,:material_bicy ,:components_bicy ,length: { maximum: 20 }
    validates :description_bicy, length: { maximum: 100 }

    belongs_to :store
    has_many :images, as: :imageable
    
end
