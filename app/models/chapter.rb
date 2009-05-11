class Chapter < ActiveRecord::Base

  acts_as_list
  acts_as_versioned

  validates_presence_of :title

  def has_revisions?
    version > 1
  end

  def self.find_by_ascending
    find(:all, :order => "position DESC")
  end
  
end
