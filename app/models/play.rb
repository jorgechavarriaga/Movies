class Play < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    has_many :reviews

    has_one_attached :play_img
    validates :title, presence: { message: "Title can't be blank" }
    validates :description, presence: { message: "Description can't be blank" }
    validates :director, presence: { message: "Categoy can't be blank" }
    validates :category_id, presence: { message: "Categoy can't be blank" }
    validates :play_img, presence: { message: "Image must be supplied" }

end
