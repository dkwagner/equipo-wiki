class Article < ApplicationRecord
    has_many_attached :images

    validates_presence_of :title, :body

end
