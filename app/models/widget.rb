require 'net/http'
require 'uri'
require 'ostruct'

class Widget

  attr_reader :app

  def initialize(app)
    @app = app
  end

  def name
    app.name
  end

  def content
    objekt = OpenStruct.new(data)
    ERB.new(app.widget).result(binding)
  end

  def data
    uri = URI.parse(app.widget_endpoint)
    json_data = Net::HTTP.get(uri)
    JSON.parse(json_data)
  end

end
