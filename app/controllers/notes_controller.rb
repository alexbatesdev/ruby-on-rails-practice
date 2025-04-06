class NotesController < ApplicationController
  def create
    # I'm following the guide linked below, but I think I could omit the patenthesis here because ruby, gonna keep them because that feels more natural as a non ruby dev, but can change my standard
    # https://guides.rubyonrails.org/v7.2/getting_started.html
    @to_do = ToDo.find(params[:to_do_id])
    @note = @to_do.notes.create(note_params)
    redirect_to to_do_path(@to_do)
  end

  def destroy
    @to_do = ToDo.find(params[:to_do_id])
    @note = @to_do.notes.find(params[:id])
    @note.destroy
    # @to_do.notes.destroy(@note)
    redirect_to to_do_path(@to_do)
  end

  private
    def note_params
      params.require(:note).permit(:body)
    end
end
