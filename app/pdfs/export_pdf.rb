class ExportPdf
  include Prawn::View

  def initialize
    content
  end

  def content
    text "Hello World. I am a PDF file :)"
  end

end
