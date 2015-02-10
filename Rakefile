require "bundler/gem_tasks"
require "autoprefixer-rails"

desc "Generate CSS build"

palettes = ['ocean', 'eighties', 'monokai']
shades = ['light', 'dark']

task :build_css, :style do |t, args|
  style = args.style || 'compressed'
  palettes.each do |palette|
    shades.each do |shade|
      add_sass(palette, shade)
      compile "build/spacegray-#{palette}-#{shade}.scss", style
    end
  end
  remove_sass
end

def add_sass(palette, shade)
  path = "assets/stylesheets/"
  sass = File.open("#{path}index.scss").read
  sass = sass.gsub(/(shade:\s+)({{.*}})/, '\1'+shade)
  sass = sass.sub(/(@import\s+')({{.*}})/, '\1' + palette)
  sass = sass.gsub(/@import\s+('|")/, '@import \1../' + path)

  File.open("build/spacegray-#{palette}-#{shade}.scss", 'w') { |f| f.write sass }
end

def remove_sass
  `rm build/*.scss build/*.map`
end


def compile(file, style)
  css = file.sub(/scss/,'css')
  system "sass --style #{style} --no-cache #{file} #{css}"
  prefix_css(css)
end

def prefix_css(css_file)
  css = File.open(css_file).read
  css = AutoprefixerRails.process(css)
  File.open(css_file, 'w') { |f| f.write css }
end
