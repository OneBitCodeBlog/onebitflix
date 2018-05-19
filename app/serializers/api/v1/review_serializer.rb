class Api::V1::ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :rating, :description
end