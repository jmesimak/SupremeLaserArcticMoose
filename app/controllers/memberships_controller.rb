class MembershipsController < ApplicationController
  def new
    @membership = Membership.new
  end


  # POST /memberships
  # POST /memberships.json
  def create
    @membership = Membership.new(params[:membership])
    @membership.user_id = current_user.id
    if @membership.save
    end
  end

  def index
  end
end
