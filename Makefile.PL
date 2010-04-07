
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.31;

use File::ShareDir::Install;
install_share "share";


my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Padre::Plugin::Plack',
                       'DISTNAME' => 'Padre-Plugin-Plack',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.31',
                                                 'Module::Build' => '0.3601',
                                                 'File::ShareDir::Install' => '0.03'
                                               },
                       'AUTHOR' => 'Patrick Donelan <pat@patspam.com>',
                       'BUILD_REQUIRES' => {
                                             'Test::More' => '0',
                                             'File::Find' => '0',
                                             'File::Temp' => '0',
                                             'Module::Build' => '0.3601'
                                           },
                       'ABSTRACT' => 'PSGI/Plack plugin for Padre',
                       'EXE_FILES' => [],
                       'VERSION' => '0.100970',
                       'PREREQ_PM' => {
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
                                        'Padre::Plugin' => '0',
                                        'Wx::Perl::ProcessStream' => '0',
                                        'File::Basename' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{BUILD_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.56) };

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);

package
MY;
use File::ShareDir::Install qw(postamble);


