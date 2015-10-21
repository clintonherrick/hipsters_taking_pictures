class Tag < ActiveRecord::Base
  has_and_belongs_to_many :pictures
  validates_presence_of :name
  validates_uniqueness_of :name

  after_validation :hashtag


  def hashtag
    if self.name[0] != "#"
      self.name = "#" + self.name
    end
  end
end
