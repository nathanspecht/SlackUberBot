class Api::SlashCommandsController < ApplicationController
  def create
    render json: {
                  "token" => slash_command_params[:token],
                  "team_id" => slash_command_params[:team_id],
                  "team_domain" => slash_command_params[:team_domain],
                  "channel_id" => slash_command_params[:channel_id],
                  "channel_name" => slash_command_params[:channel_name],
                  "user_id" => slash_command_params[:user_id],
                  "user_name" => slash_command_params[:user_name],
                  "command" => slash_command_params[:command],
                  "text" => slash_command_params[:text],
                  "response_url" => slash_command_params[:response_url]
                 }
  end

  private

  def slash_command_params
    params.permit(:token, :team_id, :team_domain,
                  :channel_id, :channel_name, :user_id,
                  :user_name, :command, :text, :response_url)
  end

end
