require "down"
require "fileutils"

tempfile = Down.download("")
FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
