class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :trackers

         has_attached_file :thumbnail, styles: { thumb: "32x32#" }
         validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

end
