class Book < ActiveRecord::Base
  belongs_to :category
  
  validates :category_id, presence: {message: "Le titre doit être renseigné."}

  validates :title, uniqueness: {message: "Ce titre est déjà pris."}
  
   scope :french, -> { where(category_id: 1) }
  
end