class PersonalInfo::Me
	include Virtus.model

	attribute :name, String
	attribute :email, String
	attribute :web_address, String
	attribute :github, String
	attribute :started_programming, Date
	attribute :jobs, Array[PersonalInfo::Job]
	attribute :personal_projects, Array[PersonalInfo::Project]
	attribute :education, Array[PersonalInfo::School]

  def get_binding
    binding()
  end

end
