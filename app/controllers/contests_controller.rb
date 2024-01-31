class ContestsController < ApplicationController
  def new
    @contest = Contest.new
  end

  def create
    @contest = Contest.new(contest_params)

    if @contest.save
      # redirect_to @item
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
  def contest_params
    params.require(:contest).permit(:fname, :lname, :email, :slogan)
  end
end
