require "./artsicle/*"
require "kemal"

module Artsicle
  get "/" do
    env.redirect "/v1"
  end

  get "/v1" do
    "Hello World!"
  end

  Kemal.run
end
