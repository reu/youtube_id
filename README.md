# YoutubeId

Simple video id extraction from youtube urls.

## Installation

Add this line to your application's Gemfile:

    gem 'youtube_id'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install youtube_id

## Usage

```ruby
YoutubeID.from("http//www.youtube.com/watch?v=RCUkmUXMd_k") # => "RCUkmUXMd_k"
```

We currently support these url formats:
`http://www.youtube.com/v/RCUkmUXMd_k`
`http://www.youtube.com/v/RCUkmUXMd_k?version=3&amp;hl=en_US&amp;rel=0`
`http://www.youtube.com/embed/RCUkmUXMd_k?rel=0`
`http://www.youtube.com/watch?v=RCUkmUXMd_k`
`http://www.youtube.com/watch?v=RCUkmUXMd_k&feature=related`
`http://www.youtube.com/watch?v=RCUkmUXMd_k#t=0m10s`
`http://www.youtube.com/user/ForceD3strategy#p/a/u/0/8WVTOUh53QY`
`http://youtu.be/RCUkmUXMd_k`

See the specs for more detailed information.
