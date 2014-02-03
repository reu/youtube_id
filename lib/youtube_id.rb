require "youtube_id/version"

module YoutubeID
  FORMATS = [
    %r<youtu\.be\/([\w-]{11})>,
    %r<youtube\.com\/watch\?v=([\w-]{11})(&|#|$)>,
    %r<youtube\.com\/embed\/([\w-]{11})(\?|&|#|$)>,
    %r<youtube\.com\/v\/([\w-]{11})(\?|&|#|$)>,
    %r<youtube\.com\/user\/.*?#\w/\w/\w/\w/([\w-]{11})\b>
  ]

  def self.from(video_url)
    video_url.strip!
    FORMATS.find { |format| video_url =~ format } and $1
  end
end
