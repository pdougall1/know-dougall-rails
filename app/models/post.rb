class Post < ActiveRecord::Base
  include Markdownable

  before_create { |post| post.viewable = true }
  before_save { format }

  has_many :annotations
  validates_presence_of :title, :entry

end
