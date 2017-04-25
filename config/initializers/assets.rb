# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w(mc.css mc.js jquery_ujs.js toastr.js bootstrap.min.js cm.css customcolorpicker.css customColorPicker.js ajax-loader.gif jquery.imgzoom.js owl.carousel.js jquery.leanModal.min.js popup.css lightslider.css lightslider.js jssor.slider-22.1.8.mini.js)
