class Api::SlashCommandsController < ApplicationController
  def create
    render json: {"text": "Received"}
  end

  private

  def slash_command_params
  end
end
