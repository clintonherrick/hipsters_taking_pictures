class Picture < ActiveRecord::Base
  has_attached_file :asset, styles: { large: "500x500>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :asset, content_type: /\Aimage\/.*\Z/
  validates :asset, {presence: true}
  validates :title, {presence: true, uniqueness: true}
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments
  has_and_belongs_to_many :tags
end
