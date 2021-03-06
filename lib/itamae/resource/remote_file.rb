require 'itamae'

module Itamae
  module Resource
    class RemoteFile < File
      define_attribute :source, type: String, required: true

      def pre_action
        content_file(::File.expand_path(source, ::File.dirname(@recipe.path)))

        super
      end
    end
  end
end

