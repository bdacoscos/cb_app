class CommenstController < ApplicationController

  def create
    @comment = Comment.new(params.require(:comment).permit(:content)
  end

  def destroy
  end

end