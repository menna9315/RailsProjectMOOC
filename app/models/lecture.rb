class Lecture < ApplicationRecord
    acts_as_votable

    belongs_to :course
    has_many :comments
    mount_uploader :attachment, AttachmentUploader
end
