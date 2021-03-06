class Special < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, styles: { medium: "700x500#", small: "350x250>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  	validates :title, :presence => true, :length => {:maximum => 70}
  	validates :price, :presence => true
  	validates :description, :presence => true
  	validates :image, :presence => true
end
