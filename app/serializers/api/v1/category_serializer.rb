class Api::V1::CategorySerializer
  include FastJsonapi::ObjectSerializer
  attributes :name

  attribute :movies do |object|
    Api::V1::MovieSerializer.new(object.movies).serializable_hash
  end

  attribute :series do |object|
    Api::V1::SerieSerializer.new(object.series).serializable_hash
  end
end