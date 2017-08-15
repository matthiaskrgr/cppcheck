project('cppcheck', 'cpp', default_options : ['cpp_std=c++11'])

includes_cli = include_directories('cli')
includes_lib = include_directories('lib')
includes_simplecpp = include_directories('externals/simplecpp')
includes_tinyxml = include_directories('externals/tinyxml')


dmake = ['tools/dmake.cpp',
         'cli/filelister.cpp',
         'lib/pathmatch.cpp',
         'lib/path.cpp',
         'externals/simplecpp/simplecpp.cpp']
         
dmake_includes = [includes_lib, includes_cli, includes_simplecpp]


cppcheck = [
    'lib/analyzerinfo.cpp',
    'lib/astutils.cpp',
    'lib/check.cpp',
    'lib/check64bit.cpp',
    'lib/checkassert.cpp',
    'lib/checkautovariables.cpp',
    'lib/checkbool.cpp',
    'lib/checkboost.cpp',
    'lib/checkbufferoverrun.cpp',
    'lib/checkclass.cpp',
    'lib/checkcondition.cpp',
    'lib/checkexceptionsafety.cpp',
    'lib/checkfunctions.cpp',
    'lib/checkinternal.cpp',
    'lib/checkio.cpp',
    'lib/checkleakautovar.cpp',
    'lib/checkmemoryleak.cpp',
    'lib/checknullpointer.cpp',
    'lib/checkother.cpp',
    'lib/checkpostfixoperator.cpp',
    'lib/checksizeof.cpp',
    'lib/checkstl.cpp',
    'lib/checkstring.cpp',
    'lib/checktype.cpp',
    'lib/checkuninitvar.cpp',
    'lib/checkunusedfunctions.cpp',
    'lib/checkunusedvar.cpp',
    'lib/checkvaarg.cpp',
    'lib/cppcheck.cpp',
    'lib/errorlogger.cpp',
    'lib/importproject.cpp',
    'lib/library.cpp',
    'lib/mathlib.cpp',
    'lib/path.cpp',
    'lib/pathmatch.cpp',
    'lib/platform.cpp',
    'lib/preprocessor.cpp',
    'lib/settings.cpp',
    'lib/suppressions.cpp',
    'lib/symboldatabase.cpp',
    'lib/templatesimplifier.cpp',
    'lib/timer.cpp',
    'lib/token.cpp',
    'lib/tokenize.cpp',
    'lib/tokenlist.cpp',
    'lib/valueflow.cpp',
    'cli/cmdlineparser.cpp',
    'cli/cppcheckexecutor.cpp',
    'cli/filelister.cpp',
    'cli/main.cpp',
    'cli/threadexecutor.cpp',
    'externals/simplecpp/simplecpp.cpp',
    'externals/tinyxml/tinyxml2.cpp'
]
cppcheck_includes = [includes_lib, includes_cli, includes_simplecpp, includes_tinyxml]


executable('dmake', sources: dmake, include_directories: dmake_includes )
executable('cppcheck', sources: cppcheck, include_directories: cppcheck_includes )
