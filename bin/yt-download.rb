#!/usr/bin/ruby
# © Copyright Ajay o s 

require "yt-download"
require "savetube_downloader"
require "optparse"

@banner = %{
               ┬ ┬ ─┬─
               └┬┘  │ 
                ┴   ┴
   [ • a simple ruby youtube video downloader • ]
   ┴┴┴┴┴┴┴┴┴┴[ • github.com/Ajay-o-s • ]┴┴┴┴┴┴┴┴┴
}

def check_url(url)
	if (url.match?(%r"youtube\.com\/shorts\/[a-zA-Z0-9_-]+"))
		return true
	else
		abort(" [yt-downloads] invalid shorts url: #{url}")
	end
end

def check_path(path)
	if (File.directory?(path.to_s))
		return true
	else
		abort(" [yt-download] required path to save !")
	end
end

def main()
	ARGV << '-h' if ARGV.empty?
	options = OpenStruct.new
	begin
		OptionParser.new do | opts |
			opts.banner = "#{@banner}\n Usage: yt-download.rb [options] / -h"
			opts.on("-u url","--url", String, "url youtube short") do | url |
				options[:url] = url
			end
			opts.on("-o output", "--output", String, "output path download") do | out |
				options[:output] = out
			end
			opts.on("-s savetube", "--savetube", String, "yt-download.savetube.me cli version") do | savetube |
				options[:savetube] = savetube
			end
			opts.on("-t type", "--type", String, "Type formats for savetube, only: audio & video") do | type |
				options[:type] = type
			end
			opts.on_tail("-h", "--help", String, "show all options and exit") do
				puts opts
				exit
			end
		end.parse!
	rescue OptionParser::InvalidOption => e
		abort("#{banner}\n invalid options : #{e.message}")
	end

	if (!options[:url].nil?)
		puts @banner
		check_url(options[:url])
		check_path(options[:output])
		YoutubeShort.new(options[:url], options[:output]).Main()
	elsif (!options[:savetube].nil? and !options[:type].nil?)
		puts @banner
		if (["audio","video"].include?(options[:type].strip))
			check_url(options[:savetube])
			check_path(options[:output])
			SaveTube.new(options[:savetube], options[:type], options[:output]).Main()
		else
			abort(" [savetube] Err: unknow type : #{options[:type]}")
		end
	else
		abort("invalid youtube short url: #{options[:url]}")
	end
end

main()
