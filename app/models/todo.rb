# frozen_string_literal: true

class Todo < ApplicationRecord
  has_many :tasks, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, length: { maximum: 50 }
end
