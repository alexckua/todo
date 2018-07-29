# frozen_string_literal: true

class Todo < ApplicationRecord
  has_many :tasks

  validates :title, presence: true, length: { maximum: 50 }
end