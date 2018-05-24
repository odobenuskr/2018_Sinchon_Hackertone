class CommentController < ApplicationController
  def reply_create
    new_reply = Reply.new
    new_reply.editor = params[:replyeditor]
    new_reply.content = params[:replycontent]
    new_reply.post_id = params[:postnumber]
    new_reply.save
    redirect_to :back
  end

  def reply_delete
    delete_id = Reply.find(params[:r_id])
    delete_id.destroy
    redirect_to :back
  end
end
