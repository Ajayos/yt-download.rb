<p align="center">
<img src="https://i.ibb.co/ZYjZwgd/1654340956599.png"/>
<a href="https://github.com/Ajay-o-s" target="_blank"><img style="width: 40%; display: block; margin-right: auto; margin-left:auto" src="https://img.shields.io/badge/Author-Ajay o s-yellow?style=flat&logo=Coursera&logoColor=white"/></a>
</p>

![](https://img.shields.io/badge/ruby-package-red?logo=ruby)
![visitor badge](https://visitor-badge.glitch.me/badge?page_id=yt-download&left_text=Total%20views)
<a href="https://twitter.com/Ajayakhub" target="_blank"> ![](https://img.shields.io/badge/Twitter-@Ajay-blue?logo=twitter)</a>
<a href="https://github.com/Ajay-o-s" target="_blank"> ![](https://img.shields.io/badge/github-@Ajay%20o%20s-blue?logo=github)</a>
<a href="https://www.ruby-lang.org/en/" target="_blank"> ![](https://img.shields.io/badge/installing-ruby-orange?logo=linux&logoColor=black)</a>

#### What's this?
  * <b>this is a ruby module/script for download youtube shorts video
    looks like usually youtube videos. but i make it like different.</b>
 ----------
#### installing package
```bash
  * Install with gems
    > gem install yt-download
  * Install from github
    > gem 'yt-download', :git => 'git://github.com/Ajay-o-s/yt-download.rb.git'
```

### use as module
 * importing
```ruby
irb(main):002:0> require "yt-download"
irb(main):005:0> short = YoutubeShort.new("https://youtube.com
/shorts/<shorts_id>?feature")
```

* Get json data
```ruby
irb(main):019:0> js_data = short.parseJS(short.getPage(short.shorts_
url)) =>
# result:
{
"author"=>"<shorts_author>",
 "title"=>"<shorts_title>",
 "duration"=>"<shorts_duration>",
 "tags"=> "<shorts_tags>" # nil if nothing tags
 "description"=> "<shorts_description>"
}
```

* running to download
```ruby
irb(main):000:0> short.Main()
```

* Audio with video
```ruby
irb(main):022:0> short.formats
=>
[{
    "link"=> "https://rr3---sn-uxa3vhnxa-nvjl.googlevideo.com/.....",
    "type"=>"video/mp4",
    "quality"=>"360p",
    "bitrate"=>598208
},  "{....}"]
```

* Just fomat only ,eg: .webm, .mp4
```ruby
irb(main):022:0> short.adaptiveFormats
=>
[{
    "link"=> "https://rr3---sn-uxa3vhnxa-nvjl.googlevideo.com/.....",
    "type"=>"video/mp4",
    "quality"=>"1080p",
    "bitrate"=> 1954462
},  "{....}"]
```

### CLI Command
```bash
               ┬ ┬ ─┬─
               └┬┘  │ 
                ┴   ┴
   [ • a simple ruby youtube video downloader • ]
   ┴┴┴┴┴┴┴┴┴┴[ • github.com/Ajay-o-s • ]┴┴┴┴┴┴┴┴┴
 Usage: yt-download.rb [options] / -h
    -u, --url url                    url youtube short
    -o, --output output              output path download
    -s, --savetube savetube          yt-download.savetube.me cli version
    -t, --type type                  Type formats for savetube, only: audio & video
    -h, --help                       show all options and exit
````
 * Use cli command
```
yt-download-dl -u <shorts_url> -o <path_to_save>
# default output is where you run the command.
# for savetube
yt-download-dl -s <shorts_url> -t <audio/video> -o <path_to_save>
```

### problems
 * Sometimes can't get stream url. /nothing valid stream url in
   the short pages.
