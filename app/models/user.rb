class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :favorites, dependent: :destroy
  has_many :pictures
  has_many :comments

   validates :username,
   :presence => true,
   :uniqueness => {
     :case_sensitive => false
   }
   validates_format_of :username, with: /\A[a-zA-Z0-9_\.]*\z/

   def self.find_for_database_authentication(warden_conditions)
     conditions = warden_conditions.dup
     if login = conditions.delete(:login)
       where(conditions.to_hash).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
     else
       where(conditions.to_hash).first
     end
   end

  #  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  #  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

end
