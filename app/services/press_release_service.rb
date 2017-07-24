class PressReleaseService

  def retrieve_data
    HTTParty.get('http://www.justice.gov/api/v1/press_releases.json?pagesize=2')
  end

  def retrieve_results
    retrieve_data["results"]
  end

end