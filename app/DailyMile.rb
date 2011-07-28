class DailyMile
  include Typhoeus
  remote_defaults :on_success => lambda {|response| JSON.parse(response.body)},
                  :on_failure => lambda {|response| puts "error code: #{response.code}"},
                  :base_uri   => "https://api.dailymile.com"

  define_remote_method :entries, :path => '/entries.json'
  #define_remote_method :trends, :path => '/trends/:time_frame.json'
  
end