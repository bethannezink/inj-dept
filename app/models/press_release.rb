class PressRelease
  attr_accessor :title, :teaser, :body, :url, :date

  def initialize(params)
    @title = params["title"]
    @teaser = params["teaser"]
    @body = params["body"]
    @url = params["url"]
    @date = format_date(params["date"])
  end

  def format_date(date)
    if date
      date = DateTime.strptime(date, '%s')
      date.strftime('%m/%d/%Y')
    end
  end

end
