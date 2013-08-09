def save_note
  if params[:id] != ""
    note = Note.find(params[:id])
    note.title = params[:title]
    note.content = params[:content]
    note.save
  else
    params.delete(:id)
    Note.create(params)
  end
end