class PressRelease
  attr_accessor :title, :teaser, :body, :url, :date

  def initialize(params)
    @title = params["title"]
    @teaser = params["teaser"]
    @body = params["body"]
    @url = params["url"]
    @date = params["date"]
  end
  
end
