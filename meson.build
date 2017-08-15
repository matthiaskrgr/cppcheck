project('cppcheck', 'cpp', default_options : ['cpp_std=c++11'])
dmake = ['tools/dmake.cpp', 'cli/filelister.cpp', 'lib/pathmatch.cpp',  'lib/path.cpp', 'externals/simplecpp/simplecpp.cpp']

includes_cli = include_directories('cli')
includes_lib = include_directories('lib')
includes_simplecpp = include_directories('externals/simplecpp')
includes_tinyxml = include_directories('externals/tinyxml')


executable('dmake', sources: dmake, include_directories: [includes_lib, includes_cli, includes_simplecpp] )
