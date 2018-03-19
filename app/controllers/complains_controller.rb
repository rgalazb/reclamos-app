class ComplainsController < ApplicationController
  def create
    @complain = Complain.new
    @complain.company = Company.find(params[:company_id])
    @complain.user = current_user
    @complain.content = params[:complain][:content]
    @complain.save
    respond_to do |format|
      format.js
    end #fin format
  end# fin create
end # fin clase
