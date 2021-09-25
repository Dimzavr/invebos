# frozen_string_literal: true

class Franchise < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 2 }
end
