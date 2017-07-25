require 'rails_helper'

RSpec.describe PressRelease do 

  date = Time.now.to_i.to_s

  let(:press_release) { PressRelease.new({ 
      'title' => 'Sample Title',
      'url' => 'sample@url.com',
      'date' => date
      })
  }

  it "is an instance of PressRelease" do 
    expect(press_release).to be_an_instance_of(PressRelease)
  end

  it "has a formatted date" do 
    expect(press_release.date).to eq('07/25/2017')
  end

end