class FlitsController < ApplicationController

before_filter :login_required

def create
  flit = current_user.flits.build(params[:flit])
  flit.created_at = Time.now
#  render :text => flit.inspect
  flit.save!
  redirect_to :root
end

def destroy

end

end
