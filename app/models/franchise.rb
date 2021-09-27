# frozen_string_literal: true

class Franchise < ApplicationRecord
  belongs_to :user

  mount_uploader :avatar, AvatarUploader

  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 2 }

  FRANCHISE_TYPES = ["Auto", "Medicin", "IT", "Startap"]
end
