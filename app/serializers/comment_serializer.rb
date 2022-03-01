class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_name, :content
end
