# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'livereload', :apply_js_live => false do
  watch(%r{app/.+\.(erb|haml)})
  watch(%r{app/controllers/.+\.rb})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{(public/|app/assets).+\.(css|js|html)})
  watch(%r{(app/assets/.+\.css)\.s[ac]ss}) { |m| m[1] }
  watch(%r{(app/assets/.+\.js)\.coffee}) { |m| m[1] }
  watch(%r{config/locales/.+\.yml})
end
