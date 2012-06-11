require_relative '../src/dir_r'

# Note that this block is required. Function is useless without one anyways.
dir_r("test_dir") do |x|
  puts x
end