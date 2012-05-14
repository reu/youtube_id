require "youtube_id"

describe YoutubeID do
  describe ".from" do
    subject { described_class.from url }

    %w(http https).each do |protocol|
      context "direct format" "/v/:id" do
        let(:url) { "#{protocol}://www.youtube.com/v/RCUkmUXMd_k" }
        it { should == "RCUkmUXMd_k" }
      end

      context "legacy embed format" "/v/:id?version=3&amp;hl=en_US&amp;rel=0" do
        let(:url) { "#{protocol}://www.youtube.com/v/RCUkmUXMd_k?version=3&amp;hl=en_US&amp;rel=0" }
        it { should == "RCUkmUXMd_k" }
      end

      context "embed format" "/embed/RCUkmUXMd_k?rel=0" do
        let(:url) { "#{protocol}://www.youtube.com/embed/RCUkmUXMd_k?rel=0" }
        it { should == "RCUkmUXMd_k" }

        context "without parameters" do
          let(:url) { "#{protocol}://www.youtube.com/embed/RCUkmUXMd_k" }
          it { should == "RCUkmUXMd_k" }
        end
      end

      context "standard format", "/watch?v=:id" do
        let(:url) { "#{protocol}://www.youtube.com/watch?v=RCUkmUXMd_k" }
        it { should == "RCUkmUXMd_k" }

        context "with additional parameters" do
          let(:url) { "#{protocol}://www.youtube.com/watch?v=RCUkmUXMd_k&feature=related" }
          it { should == "RCUkmUXMd_k" }
        end

        context "with start time specification" do
          let(:url) { "#{protocol}://www.youtube.com/watch?v=RCUkmUXMd_k#t=0m10s" }
          it { should == "RCUkmUXMd_k" }
        end
      end

      context "user video format", "/user/name#p/a/u/0/:id" do
        let(:url) { "#{protocol}://www.youtube.com/user/ForceD3strategy#p/a/u/0/8WVTOUh53QY" }
        it { should == "8WVTOUh53QY" }
      end

      context "short url format", "//youtu.be/RCUkmUXMd_k" do
        let(:url) { "#{protocol}://youtu.be/RCUkmUXMd_k" }
        it { should == "RCUkmUXMd_k" }
      end

      context "short url format with dashes", "//youtu.be/Hu0i--4tz0N" do
        let(:url) { "#{protocol}://youtu.be/Hu0i--4tz0N" }
        it { should == "Hu0i--4tz0N" }
      end
    end
  end
end
