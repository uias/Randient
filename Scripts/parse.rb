# @example
# curl https://raw.githubusercontent.com/Ghosh/uiGradients/master/gradients.json | ruby parse.rb

require "json"
require "erb"
require 'active_support/core_ext/string/inflections'

def parse(body)
  @colors = JSON.parse(body).map do |color|
    {
        "name" => color["name"],
        "camelized_name" => color["name"].gsub(/(\W|\d)/, "").split(" ").join("").camelize(:lower), # dirty
        "colors" => color["colors"],
    }
  end
end

def render_swift
  ERB.new(File.read("UIGradients.swift.erb"), nil, '-').result()
end

def write
  File.open("UIGradients.swift", "w") do |f|
    f.write render_swift
  end
end

json_string = ARGF.read
parse(json_string)
write()