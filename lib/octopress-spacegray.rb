require "octopress-spacegray/version"
require "octopress-ink"

Octopress::Ink.add_plugin({
  name:        "Octopress Spacegray",
  description: "",
  path:         File.expand_path(File.join(File.dirname(__FILE__), '../')),
  version:      Octopress::Spacegray::VERSION,
  source_url:  ""
})
