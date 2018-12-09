class Article < ApplicationRecord
    has_many_attached :images
    validates :images, blob: { content_type: ['image/png', 'image/jpg', 'image/jpeg', 'image/gif']}
    validates_presence_of :title, :body

end
