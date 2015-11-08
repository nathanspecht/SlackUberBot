class Api::SlashCommandsController < ApplicationController
  def create
    render json: slash_command_params[:user_name]
  end

  private

  def slash_command_params
    params.permit(:token, :team_id, :team_domain,
                  :channel_id, :channel_name, :user_id,
                  :user_name, :command, :text, :response_url)
  end

end
