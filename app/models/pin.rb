class Pin < ActiveRecord::Base
	belongs_to :user

	validates :description, :length => { :minimum => 40 }

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
