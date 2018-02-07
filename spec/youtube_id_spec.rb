require "youtube_id"
require_relative 'spec_helper'

describe YoutubeID do
  describe ".from" do
    subject { described_class }
    let(:id){ "RCUkmUXMd_k" }

    [
      "http://www.youtube.com/v/RCUkmUXMd_k",
      "http://www.youtube.com/v/RCUkmUXMd_k?version=3&amp;hl=en_US&amp;rel=0",
      "http://www.youtube.com/embed/RCUkmUXMd_k?rel=0",
      "http://www.youtube.com/watch?v=RCUkmUXMd_k",
      "http://www.youtube.com/watch?v=RCUkmUXMd_k&feature=related",
      "http://www.youtube.com/watch?v=RCUkmUXMd_k#t=0m10s",
      "http://www.youtube.com/user/ForceD3strategy#p/a/u/0/RCUkmUXMd_k",
      "http://youtu.be/RCUkmUXMd_k"
    ].each do |url|
      it "extracts the id: RCUkmUXMd_k from the url: #{url.to_s}" do
        subject.from(url).should == id
      end
    end

  end
end
