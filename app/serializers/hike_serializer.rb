class HikeSerializer
  include FastJsonapi::ObjectSerializer
  attributes  :name, :difficulty, :distance, :best_season, :trail_use, :notes
  has_many :comments
end
