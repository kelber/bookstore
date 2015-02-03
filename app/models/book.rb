class Book < ActiveRecord::Base

     extend FriendlyId
     friendly_id :title, use: :slugged

     belongs_to :user
     has_many :sales

     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "no_image.png"
     validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :resource, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "no_image.png"
     validates_attachment_content_type :resource, :content_type => /\Aimage\/.*\Z/

    validates_attachment_content_type :resource, content_type: { content_type: "application/pdf" }


    validates_numericality_of :price, greater_than: 49, message: "Must be at least 50c"


end
