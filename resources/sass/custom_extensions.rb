module JAM
  module SassExtensions
    module Functions
      module CustomImages
        def custom_image(path, mime_type = nil)
          path = path.value
          images_path = File.join(File.dirname(__FILE__), "..", "images")
          real_path = File.join(images_path, path)
          inline_image_string(data(real_path), compute_mime_type(path, mime_type))
        end
      end
    end
  end
end

module Sass::Script::Functions
  include JAM::SassExtensions::Functions::CustomImages
end