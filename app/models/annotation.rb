class Annotation < ActiveRecord::Base
	include Markdownable

	before_save { format }
	belongs_to :post

end
