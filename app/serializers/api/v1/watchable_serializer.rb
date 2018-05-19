class Api::V1::WatchableSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :description, :thumbnail_key, :featured_thumbnail_key

  attribute :type do |object|
    object.model_name
  end

  attribute :favorite do |object, params|
    if params.present? && params.has_key?(:user)
      params[:user].favorites.where(favoritable: object).exists?
    end
  end

  attribute :video_key do |object|
    if object[:video_key].present?
      object.video_key
    end
  end

  attribute :featured_thumbnail_key do |object|
    if object[:featured_thumbnail_key].present?
      object.featured_thumbnail_key
    end
  end
end