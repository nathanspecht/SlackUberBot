class Api::SlashCommandsController < ApplicationController
  def create
    render json: {"text" => request.body.read}
  end

  private

  def slash_command_params
  end
end
