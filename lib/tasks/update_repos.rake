namespace :repos do
  desc "update count of repos owned"
  task update: :environment do
    count = RepositoryClient.fetch_count("ember-calendar-builder")
    repo = Repository.where(name: 'ember-calendar-builder').first
    repo.days.create(count: count)
  end

  desc "add repo"
  task add: :environment do
    Repository.create(name: 'ember-calendar-builder', site: 'https://www.npmjs.com')
  end
end

