use strict;
use warnings;

use Module::Build;
my %prereq = (
              'CGI::Ajax'     => 0,
	      'Apache2::RequestRec' => 0,
             );
eval {require Apache::TestMB; };
die qq{Apache::TestMB is required for testing} if $@;

my $build = Apache::TestMB->new(
  module_name => 'Apache2::Ajax',
  license => 'perl',
  requires => \%prereq,
  dist_version_from => 'lib/Apache2/Ajax.pm',
  dist_author => ['Randy Kobes <r.kobes@uwinnipeg.ca>'],
  dist_abstract_from => 'lib/Apache2/Ajax.pm',
);

$build->create_build_script;

