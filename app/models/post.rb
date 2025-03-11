class Post < ApplicationRecord
    has_on_attached :content
    belongs_to :user

    validates :introduction, presence: true
    validates :status, presence: true

    enum status: {draft: 0, open: 1, private: 2}
end
