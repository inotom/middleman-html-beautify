require 'middleman-core'
require 'middleman-html-beautify/version'

::Middleman::Extensions.register(:html_beautify) do
  require 'middleman-html-beautify/extension'
  ::Middleman::HtmlBeautify::Extension
end
