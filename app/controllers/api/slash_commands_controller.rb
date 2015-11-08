class Api::SlashCommandsController < ApplicationController
  def create
    render json: { "text" => <<-STRING
                        #{slash_command_params[:token]},
                        #{slash_command_params[:team_id]},
                        #{slash_command_params[:team_domain]},
                        #{slash_command_params[:channel_id]},
                        #{slash_command_params[:channel_name]},
                        #{slash_command_params[:user_id]},
                        #{slash_command_params[:user_name]},
                        #{slash_command_params[:command]},
                        #{slash_command_params[:text]},
                        #{slash_command_params[:response_url]}
                    STRING
                 }
  end

  private

  def slash_command_params
    params.permit(:token, :team_id, :team_domain,
                  :channel_id, :channel_name, :user_id,
                  :user_name, :command, :text, :response_url)
  end

end
