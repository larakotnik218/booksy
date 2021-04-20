class ExportController < ApplicationController
  def index

  end

  def show
    require "prawn"
    respond_to do |format|
      format.html { render :show }
      format.pdf do
        pdf = ExportPdf.new
        send_data pdf.render,
          filename: "report.pdf",
          type: 'application/pdf'
        end
      end
  end
end
