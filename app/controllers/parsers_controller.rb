class ParsersController < ApplicationController
  def index
  end

  def parse_it
    file = params[:parsers][:file]
    file_data = file.respond_to?(:read) ? file.read : nil
    @data_hash = file_data ? JSON.parse(file_data) : {}
    render action: :index
  end
end
