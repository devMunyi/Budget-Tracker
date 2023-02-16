class ImageUploader < Shrine
  # plugins and uploading logic
  Attacher.validate do
    validate_size 1..5 * 1024 * 1024
    validate_mime_type %w[image/jpeg image/png image/webp image/tiff image/gif image/xml+svg]
    validate_extension %w[jpg jpeg png webp tiff tif gif svg]
  end
end
