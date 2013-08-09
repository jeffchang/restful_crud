def back_to_index
  create_edit
  find_notes
end

def create_edit
  @edit = Note.new({
    title: nil,
    content: nil,
    id: nil
  })
end

def find_notes
  @notes = Note.order("id")
  erb :index
end