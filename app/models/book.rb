class Book < ActiveRecord::Base

    belongs_to :user

     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/no_image.png"
     validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  has_attached_file :resource, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/no_image.png"
     validates_attachment_content_type :resource, :content_type => /\Aimage\/.*\Z/





end
