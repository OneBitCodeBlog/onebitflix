class Api::V1::MovieSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :description, :episode_number, :serie_id
  belongs_to :serie

  attribute :category do |object|
    object.category&.name
  end

  attribute :reviews_count do |object|
    object.reviews.count
  end

  attribute :favorite do |object, params|
    if params.present? && params.has_key?(:user)
      params[:user].favorites.where(favoritable: object).exists?
    end
  end

  attribute :thumbnail_url do |object|
    AWS_BUCKET.object("thumbnails/#{object.thumbnail_key}").presigned_url(:get, expires_in: 120)
  end

  attribute :thumbnail_cover_url do |object|
    AWS_BUCKET.object("thumbnails/#{object.thumbnail_cover_key}").presigned_url(:get, expires_in: 120)
  end

  attribute :featured_thumbnail_url do |object|
    if object[:featured_thumbnail_key].present?
      AWS_BUCKET.object("thumbnails/#{object.featured_thumbnail_key}").presigned_url(:get, expires_in: 120)
    end
  end

  attribute :video_url do |object|
    AWS_BUCKET.object("videos/#{object.video_key}").presigned_url(:get, expires_in: 120)
  end
end