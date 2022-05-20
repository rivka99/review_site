class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :streamer_id
end
