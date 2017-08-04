class PressReleaseService

  def page_count
    retrieve_data["metadata"]["resultset"]["count"]
  end

  def retrieve_data(url_params = '')
    HTTParty.get('http://www.justice.gov/api/v1/press_releases.json?pagesize=100&sort=date' + url_params)
  end

  def results
    retrieve_data('&page=' + page_count)["results"]
  end

  def build_results
    results.collect do |result|
      PressRelease.new(result)
    end
  end

end