class PressReleaseService

  def retrieve_data
    HTTParty.get('http://www.justice.gov/api/v1/press_releases.json?pagesize=2')
  end

  def results
    retrieve_data["results"]
  end

  def build_results
    results.collect do |result|
      PressRelease.new(result)
    end
  end

end