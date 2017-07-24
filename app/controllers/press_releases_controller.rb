class PressReleasesController < ApplicationController
  def index
    @press_releases = PressReleaseService.new.retrieve_results
  end
end
