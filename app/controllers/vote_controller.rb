class VoteController < ApplicationController
  def like
  	@d = Vote.find(params[:id])
  	@d.like += 1
  	@d.save
  	respond_to do |format|
      format.js {@d}
    end
  end
end
