require 'youtube_id/version'

module YoutubeID
  FORMATS = [
    %r{(?:https?://)?youtu\.be/(.*?)(\?|$|#|&)},
    %r{(?:https?://)?(?:www\.)?youtube\.com/watch\?v=(.*?)(&|#|$)},
    %r{(?:https?://)?(?:www\.)?youtube\.com/watch\?.*?v=(.*?)(&|#|$)},
    %r{(?:https?://)?(?:www\.)?youtube\.com/embed/(.*?)(\?|$)},
    %r{(?:https?://)?(?:www\.)?youtube\.com/v/(.*?)(#|\?|$)},
    %r{(?:https?://)?(?:www\.)?youtube\.com/user/.*?#\w/\w/\w/\w/(.+)\b}
  ].freeze

  def self.from(video_url)
    video_url.strip!
    FORMATS.find { |format| video_url =~ format } and $1
  end
end
