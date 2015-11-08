class Api::SlashCommandsController < ApplicationController
  def create
    render json: params
  end

  private

  def slash_command_params
  end
end
