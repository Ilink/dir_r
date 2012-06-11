require_relative '../src/dir_r'

# Note that this block is required. Function is useless without one anyways.
dir_r("test_dir") do |x, dir|
  puts "#{x} is within #{dir}"
end