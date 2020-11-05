class MedicalFile < ApplicationRecord
    mount_uploader :foto_expediente , ImagenExpedienteUploader
end
