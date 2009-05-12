class Chapter < ActiveRecord::Base

  acts_as_list
  acts_as_versioned
  has_many :comments
  
  validates_presence_of :title

  def has_revisions?
    version > 1
  end

  def self.find_by_ascending
    find(:all, :order => "position DESC")
  end
  
  def has_comments?
    !comments.nil?
  end
end
