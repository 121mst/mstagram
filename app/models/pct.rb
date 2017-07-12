class Pct < ActiveRecord::Base
    validates :title, presence: true
    mount_uploader :image, ImageUploader
end
