get '/' do
  if params[:id] == nil
    @edit = Note.new({
    title: nil,
    content: nil,
    id: nil
    })
  else
    @edit = Note.find(params[:id])
  end
  @notes = Note.all
  erb :index
end

post '/save' do
  if params[:id]
    note = Note.find(params[:id])
    note.title = params[:title]
    note.content = params[:content]
    note.save
  else
    params.delete(:id)
    Note.create(params)
  end
  @notes = Note.all
end

post '/delete' do
  Note.find(params[:id]).destroy
  @notes = Note.all?
  erb :index
end

