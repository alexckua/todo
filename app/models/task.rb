# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :todo

  validates :task, presence: true, length: { maximum: 300 }

  mount_uploader :attachment, AttachmentUploader

  enum priority: %w[whenever low medium high immediate]
end
