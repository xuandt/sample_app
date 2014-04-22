class Comment < ActiveRecord::Base

  belongs_to :micropost
  default_scope -> { order('created_at DESC') }
  validates :body, presence: true, length: { maximum: 140 }
  validates :micropost_id, presence: true
  validates :commenter, presence: true
  
end
