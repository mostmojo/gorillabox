class ChallengesController < ApplicationController
  before_action :set_challenge, only: %i[show update edit]
  def index
    @user = current_user
    @completed_challenges = Challenge.where(completed: true)
    @incomplete_challenges = Challenge.where(completed: false)
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def complete
    @challenge = Challenge.find(params[:id])
    @challenge.completed = true
    if @challenge.save
      redirect_to challenges_path
    else
      format.html { redirect_to challenges_path, notice: 'Something went wrong' }
    end
  end



  private

  def challenge_params
    params.require(:challenge).permit(:title, :completed, :details)
  end

  def set_challenge
    @challenge = Challenge.find(params[:id])
  end
end
