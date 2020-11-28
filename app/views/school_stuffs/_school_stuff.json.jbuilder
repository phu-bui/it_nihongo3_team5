json.extract! school_stuff, :id, :name, :price, :publisher, :created_at, :updated_at
json.url school_stuff_url(school_stuff, format: :json)
