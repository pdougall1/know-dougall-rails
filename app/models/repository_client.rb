class RepositoryClient

  def self.fetch_count(repo_name)
    new(repo_name).fetch_count
  end

  def initialize(repo_name)
    @repo_name = repo_name
  end

  def fetch_count
    day = Date.current - 1.day
    repo = "/downloads/point/last-day/" + @repo_name
    response = faraday.get repo
    JSON.parse(response.body)['downloads']
  end

  def faraday
    @conn ||= Faraday.new(url: 'https://api.npmjs.org') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
  end

end