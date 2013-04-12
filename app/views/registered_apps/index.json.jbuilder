json.array!(@registered_apps) do |registered_app|
  json.extract! registered_app, :name, :widget, :widget_endpoint
  json.url registered_app_url(registered_app, format: :json)
end