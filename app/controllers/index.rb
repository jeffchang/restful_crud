get '/' do
  if params[:id].nil?
    create_edit
  else
    @edit = Note.find(params[:id])
  end
  find_notes
end

post '/save' do
  save_note
  back_to_index
end

post '/delete' do
  begin
    Note.find(params[:id]).destroy
  rescue
  end
  back_to_index
end

post '/deleteall' do
  Note.destroy_all
  back_to_index
end
