class ChallengesController < ApplicationController
  before_action :set_challenge, only: %i[show update edit]
  def index
    @user = current_user
    @challenges = Challenge.all
  end

  def show
    @challenge = Challenge.find(params[:id])
  end

  def edit
  end

  def update
  	  respond_to do |format|
      if @challenge.update(challenge_params)
        format.html { redirect_to challenges_path, notice: 'Your challenge was successfully updated' }
      else
        format.html { render :edit }
        format.json { render json: @challenge.errors, status: unprocessable_entity }
      end
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
