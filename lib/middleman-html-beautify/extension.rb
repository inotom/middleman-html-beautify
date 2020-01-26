module Middleman
  module HtmlBeautify
    class Extension < ::Middleman::Extension
      option :keep_blank_lines, 0, 'Keep blank lines count'
      option :indent, '  ', 'Indent character'
      option :initial_level, 0, 'Starting indent level'
      option :stop_on_errors, false, 'Stop building with errors'

      def initialize(*)
        super
      end

      def after_configuration
        app.use Rack, options.to_h
      end

      class Rack

        DEFAULT_OPTIONS = {
          keep_blank_lines: 0,
          indent: '  ',
          initial_level: 0,
          stop_on_errors: false
        }

        def initialize app, options = {}
          require 'htmlbeautifier'

          @app = app

          @options = DEFAULT_OPTIONS.merge(options)
        end

        def call env
          status, headers, body = @app.call(env)

          if headers.key? 'Content-Type' and headers['Content-Type'] =~ /html/
            content = ''

            body.each do |part|
              content << part
            end

            content = HtmlBeautifier.beautify(content, @options)

            headers['Content-Length'] = content.bytesize.to_s if headers['Content-Length']

            [status, headers, [content]]
          else
            [status, headers, body]
          end
        ensure
          body.close if body.respond_to?(:close)
        end
      end
    end
  end
end
