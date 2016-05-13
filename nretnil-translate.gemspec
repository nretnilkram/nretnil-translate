#!/bin/env ruby
# encoding: UTF-8
# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('../lib', __FILE__)

require 'nretnil/translate/version'

Gem::Specification.new do |s|
  s.name        = 'nretnil-translate'
  s.version     = Nretnil::Translate::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Nretnil Kram']
  s.email       = ['signkram@gmail.com']
  s.homepage    = 'http://github.com/nretnilkram/nretnil-translate'
  s.date        = Time.now.strftime('%Y-%m-%d')
  s.summary     = 'Translation Gem'
  s.description = 'This Gem will assist with specific translations.'
  s.license     = 'MIT'
  s.extra_rdoc_files = [
    'LICENSE',
    'README.md'
  ]

  s.post_install_message = "Know your target and what's behind it."

  s.required_rubygems_version = '>= 0.0.0'

  s.files         = Dir.glob('{bin,lib}/**/*') + %w(LICENSE README.md CHANGELOG.md)
  s.rdoc_options  = ['--charset=UTF-8']
  s.require_paths = ['lib']
end
