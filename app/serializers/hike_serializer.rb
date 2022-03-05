class HikeSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :name, :difficulty, :distance, :best_season, :trail_use, :notes, :comments
  has_many :comments
end
