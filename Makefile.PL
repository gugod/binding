use inc::Module::Install;

all_from 'lib/Binding.pm';

requires
    'PadWalker'        => 1.7,
    'Devel::Caller'    => 2.03,
    'Data::Dump'       => 1.14;
test_requires
    'Test::More'       => '0.42',
    'UNIVERSAL::isa'   => 0;

tests 't/*.t';
author_tests 'xt/*.t';
repository 'http://github.com/gugod/binding';

WriteAll;


