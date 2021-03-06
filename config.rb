
## Pdfmaker custom extension from github.com/reefab/ResumeMan
require 'makepdf'

###
# Compass
###

# Change Compass configuration
compass_config do |config|
#   config.output_style = :compact
  config.line_comments = false
end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
page "*.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
# activate :livereload

# Methods defined in the helpers block are available in templates
helpers do
  # Process markdown in templates
  def markdown(text)
    Tilt['markdown'].new { text }.render(scope=self)
  end
  def markdown_unwrap_p(text)
    unwrap_p = Tilt['markdown'].new { text }.render(scope=self)
    unwrap_p = Regexp.new('^<p>(.*)<\/p>$').match(unwrap_p)[1]
  end
#   def some_helper
#     "Helping"
#   end
end

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

  # Disable this if you don't want PDF generation
  activate :pdfmaker
end
