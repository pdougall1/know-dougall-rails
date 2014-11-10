class AnnotationSerializer < ActiveModel::Serializer
  attributes :id, :entry, :formatted_entry, :name, :post_id
end
