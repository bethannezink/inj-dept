require 'rails_helper'

RSpec.describe PressRelease do 

  date = Time.now.to_i.to_s

  let(:press_release) { PressRelease.new({ 
      'title' => 'Sample Title',
      'url' => 'sample@url.com',
      'date' => date
      })
  }

  let(:date_validation) { /(0[1-9]|1[012])[- \/.](0[1-9]|[12][0-9]|3[01])[- \/.](19|20)\d\d/ }


  it "is an instance of PressRelease" do 
    expect(press_release).to be_an_instance_of(PressRelease)
  end

  it "has a formatted date" do
    expect(press_release.date).to match(date_validation)
  end

end