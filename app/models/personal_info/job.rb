class PersonalInfo::Job
	include Virtus.model

	attribute :name, String
	attribute :web_address, String
	attribute :start_date, Date
	attribute :end_date, Date
	attribute :description_points, Array[String]
	attribute :projects, Array[PersonalInfo::Project]
end
