class MedicalFilesController < ApplicationController
  def new
    @medical_file = MedicalFile.new
  end

  def create
    u = MedicalFile.new
    u.foto_expediente = params[:foto_expediente] # Assign a file like this, or

    # like this
    File.open('somewhere') do |f|
      u.foto_expediente = f
    end

    u.save!
    u.foto_expediente.url # => '/url/to/file.png'
    u.foto_expediente.current_path # => 'path/to/file.png'
    u.foto_expediente # => 'file.png'
  end

  private

  #Permite que solo permita los siguientes parámetros
  def medical_file_params

  end
end
