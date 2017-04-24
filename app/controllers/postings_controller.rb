class PostingsController < ApplicationController
  def index
    @all_postings = Posting.all
    @all_comments = Comment.all
  end

  def create
    posting = Posting.new
    posting.title = params[:title]
    posting.body = params[:body]
    posting.save

    redirect_to '/index'
  end
end
