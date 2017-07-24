class PressReleasesController < ApplicationController
  def index
    @press_releases = PressReleaseService.new.build_results
  end
end
