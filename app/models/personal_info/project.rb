class PersonalInfo::Project
	include Virtus.model

	attribute :name, String
	attribute :techs_used, Array[String]
	attribute :description_points, Array[String]
end
