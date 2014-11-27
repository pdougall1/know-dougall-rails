class PersonalInfo::School
	include Virtus.model

	attribute :name, String
	attribute :degree, String
	attribute :gpa, String
	attribute :start_date, Date
	attribute :end_date, Date
	attribute :accolades, Array[String]
end
