class Picture < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged
	
	has_attached_file :image

	validates_attachment_content_type :image,
	content_type: /^image\/(png|gif|jpeg)/,
	message: "Only png, gif, and jpeg allowed"

	validates :image, attachment_presence: true
end
