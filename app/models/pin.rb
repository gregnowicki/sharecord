class Pin < ActiveRecord::Base
	belongs_to :user

	validates :description, presence: true, :length => { :minimum => 40 }
  validates :image, presence: true
  validates :description, presence: true

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
