class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  
  
  validates :content, presence: true, length: { minimum: 5, maximum: 1000 }
  
  # def self.by_position
  #       order("position DESC")
  # end
  
  default_scope { order("created_at DESC") }
  
  # default_scope { where(published: true) }
  
  # scope :for_display, -> { order(:created_at).desc }
  
  after_create_commit { CommentBroadcastJob.perform_later(self) }
  

  
  # scope :newest_first, -> { order(created_at: :desc) }
end
