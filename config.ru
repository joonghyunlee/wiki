require 'rubygems'
require 'gollum/app'

gollum_path = File.expand_path(File.dirname(__FILE__))

wiki_options = {}
wiki_options[:universal_toc] = true
wiki_options[:show_all] = true
wiki_options[:h1_title] = true
wiki_options[:allow_editing] = true
wiki_options[:allow_uploads] = 'page'
wiki_options[:collapse_tree] = true
wiki_options[:show_all] = true
wiki_options[:template_dir] = '/wiki/templates'
wiki_options[:live_preview] = false
wiki_options[:bare] = true

Precious::App.set(:gollum_path, gollum_path)
Precious::App.set(:default_markup, :markdown)
Precious::App.set(:wiki_options, wiki_options)

run Precious::App
