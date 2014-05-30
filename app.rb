require "rubygems"
require "sinatra"

class App < Sinatra::Application
  get "/document.write" do
    sleep Integer(ENV.fetch("DELAY", 5))
    %Q(document.write("<div style='background: #ccc;'>slow ad</div>")\n)
  end
end
