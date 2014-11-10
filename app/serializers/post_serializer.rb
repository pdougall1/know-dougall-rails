class PostSerializer < ActiveModel::Serializer
  attributes :id, :entry, :formatted_entry, :formatted_entry, :topic, :title, :summary, :viewable, :created_at, :annotation_ids
  has_many :annotations

  def annotation_ids
	annotations.pluck(:id)  	
  end
end
