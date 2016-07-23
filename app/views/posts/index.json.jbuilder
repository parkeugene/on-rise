json.array!(@posts) do |post|
  json.extract! post, :id, :img, :title, :description, :original_link, :trans_link, :translators, :goal, :area, :participation_way, :likes_number, :start_date, :end_date, :status, :read_count, :contact
  json.url post_url(post, format: :json)
end
