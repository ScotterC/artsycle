require "./artsicle/*"
require "kemal"

module Artsicle
  get "/v1" do
    "Hello World!"
  end

  Kemal.run
end
