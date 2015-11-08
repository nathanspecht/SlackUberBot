class Api::SlashCommandsController < ApplicationController
  def create
    puts request.body.read
    render json: {"text" => "Received"}
  end

  private

  def slash_command_params
  end
end
