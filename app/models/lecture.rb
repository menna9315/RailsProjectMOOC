class Lecture < ApplicationRecord
    has_and_belongs_to_many :users

    acts_as_votable

    belongs_to :course
    has_many :comments
    mount_uploader :attachment, AttachmentUploader
    validates :content, :course_id, :attachment, presence: true


end
