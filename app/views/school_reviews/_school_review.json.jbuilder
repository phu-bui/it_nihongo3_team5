json.extract! school_review, :id, :user_id, :school_id, :review, :created_at, :updated_at
json.url school_review_url(school_review, format: :json)
