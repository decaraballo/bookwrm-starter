json.extract! review, :id, :description, :rating, :book, :user_id, :created_at, :updated_at
json.url review_url(review, format: :json)
