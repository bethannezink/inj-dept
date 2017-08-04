class TopicTaggingService

  def retrieve_results(text)
    url = 'https://twinword-topic-tagging.p.mashape.com/generate/?text=' + text
    HTTParty.get(url)
  end


end