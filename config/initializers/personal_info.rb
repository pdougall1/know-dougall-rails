data = YAML.load(File.open(Rails.root.join('config', 'personal_info.yml')))
$personal_info = PersonalInfo.new(data)
