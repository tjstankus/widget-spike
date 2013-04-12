class Widget

  attr_reader :app

  def initialize(app)
    @app = app
  end

  def content
    @app.widget
  end
end
