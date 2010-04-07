
use strict;
use warnings;

use Module::Build 0.3601;

my %module_build_args = (
                       'dist_abstract' => 'PSGI/Plack plugin for Padre',
                       'script_files' => [],
                       'license' => 'perl',
                       'build_requires' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Module::Build' => '0.3601'
                                           },
                       'dist_name' => 'Padre-Plugin-Plack',
                       'dist_author' => [
                                          'Patrick Donelan <pat@patspam.com>'
                                        ],
                       'share_dir' => 'share',
                       'module_name' => 'Padre::Plugin::Plack',
                       'requires' => {
                                       'Wx' => '0',
                                       'Padre::Util' => '0',
                                       'Scalar::Util' => '0',
                                       'Padre::Wx::Output' => '0',
                                       'Class::Unload' => '0',
                                       'Padre::Document::Perl' => '0',
                                       'Proc::Killfam' => '0',
                                       'File::Which' => '0',
                                       'Padre' => '0.59',
                                       'Padre::Wx' => '0',
                                       'Padre::MimeTypes' => '0',
                                       'File::Find::Rule' => '0',
                                       'Plack' => '0.9021',
                                       'Padre::Current' => '0',
                                       'Class::XSAccessor' => '0',
                                       'utf8' => '0',
                                       'Padre::Logger' => '0',
                                       'perl' => '5.008',
                                       'Padre::Plugin' => '0',
                                       'Wx::Perl::ProcessStream' => '0',
                                       'File::Basename' => '0'
                                     },
                       'recommends' => {},
                       'configure_requires' => {
                                                 'ExtUtils::MakeMaker' => '6.31',
                                                 'Module::Build' => '0.3601',
                                                 'File::ShareDir::Install' => '0.03'
                                               },
                       'dist_version' => '0.100970'
                     );


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
