# frozen_string_literal: true

class Franchise < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, AvatarUploader
  has_many_attached :images

  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 2 }

  FRANCHISE_TYPES = ["Auto","Children's franchises", "Medicine", "Internet and IT", "Training and education","Recreation and entertainment","Nutrition","Production","Retail","Sports, health and beauty","Construction","Business services (b2b)","Services for the public","Financial services"]
end
