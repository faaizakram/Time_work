class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         has_many :trackers
         has_many :subtrackers, through: :trackers
       
         has_attached_file :thumbnail, styles: { thumb: "32x32#" }, :default_url => lambda { |avatar| avatar.instance.set_default_url}
         validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\z/

         def set_default_url
           ActionController::Base.helpers.asset_path('missing.png')
        end

end
