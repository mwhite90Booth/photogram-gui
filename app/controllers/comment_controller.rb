class CommentController < ApplicationController

  def insert
    comment = Comment.new
    comment.photo_id = params.fetch("photo_id")
    comment.author_id = params.fetch("author_id")
    comment.body = params.fetch("comment")
    comment.save
    redirect_to("/photos/#{comment.photo_id}")
  end

end
