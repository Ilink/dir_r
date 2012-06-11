# @function dir_r takes a path, renders out all files and sub-files recursively.
# @param path the starting path. Required param.
# @param block the block the user passed. Required param. Ordinarily, required blocks are implict.
#   However, the block must be passed explicitly to recursive calls.
#
# Ian Link 6.10.12

def dir_r(path, &block)
  dir = Dir.new(path)

  dir.each do |x|
    if x != '.' and x != '..'
      if File.extname(x) == ''
        new_path = path + "/" + x + "/"
        if File.directory?(new_path)
          dir_r(new_path, &block)
        end
      else
        yield x, path
      end
    end
  end
end