class NoteException < StandardError
  def initialize(msg="An error occurred")
    super(msg)
  end
end