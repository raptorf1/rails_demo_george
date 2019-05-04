class Comment < ApplicationRecord
  belongs_to :article
  validates :body, presence: true
  validates :commenter, format: { with: URI::MailTo::EMAIL_REGEXP }
end
