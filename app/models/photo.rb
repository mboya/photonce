class Photo < ActiveRecord::Base
  has_many :order_items

  default_scope { where(active: true) }

  has_attached_file :image, :styles => { :large => "600x600", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/assets/missing.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
