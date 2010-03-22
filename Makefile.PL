use inc::Module::Install 0.91;

name 'Padre-Plugin-Plack';
all_from 'lib/Padre/Plugin/Plack.pm';
author 'Patrick Donelan <pdonelan@cpan.org>';
license 'perl';
readme_from 'lib/Padre/Plugin/Plack.pm';

requires 'Padre' => '0.53';
requires 'Plack' => '0.9021';
requires 'File::Basename';
requires 'File::Find::Rule';
requires 'File::Which';
requires 'Proc::Killfam';
requires 'Scalar::Util';

test_requires 'Test::More';

homepage       'http://padre.perlide.org/';
repository     'http://svn.perlide.org/padre/trunk/Padre-Plugin-Plack';
is_padre_plugin; # authors: install Module::Install::PadrePlugin

install_share_with_mofiles; # install Locale::Msgfmt

auto_install;

WriteAll;