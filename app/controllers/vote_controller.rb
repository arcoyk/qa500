class VoteController < ApplicationController
  def like
  	@d = Vote.find(params[:id])
  	@d.like += 1
  	@d.save
  	respond_to do |format|
      format.js {@d}
    end
  end

  def yesno
  	@d = Vote.find(params[:id])
  	@yesno = params[:yesno]
  	if @yesno == 'yes'
  		@d.yes += 1
  	elsif @yesno == 'no'
  		@d.no += 1
  	end
  	@d.save
  	@params = params
  	@params[:vote_count] = @d.yes + @d.no
  	@params[:question_id] = @d.question_id
  	@params[:answer_id] = @d.answer_id
	respond_to do |format|
	    format.js { @params }
	 end
  end
end
