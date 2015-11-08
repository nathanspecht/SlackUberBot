class Api::SlashCommandsController < ApplicationController
  def create
    render json: {"text" => "Received"}
  end

  private

  def slash_command_params
    params.permit(:username)
  end
end
