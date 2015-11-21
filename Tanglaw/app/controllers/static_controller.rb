class StaticController < ApplicationController
  def index
  end
  
  def ANN_pdf
  send_file(
    "#{Rails.root}/public/ANN.pdf",
    filename: "ANN.pdf",
    disposition: 'inline',
    type: "application/pdf"
  )
  end
end
