class Post < ActiveRecord::Base
 has_many :comments
 has_attached_file :avatar, :style => { :medium => "300x300>", :thumb => "100x100>"},
:default_url => "/images/:style/missing.png"
 validates :title, presence: true, length: { minimum: 5 }
end
