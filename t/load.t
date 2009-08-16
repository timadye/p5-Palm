use vars qw(@classes);

BEGIN
	{
	@classes = map { "Palm::$_" }
		qw( Address Datebook Mail Memo PDB Raw StdAppInfo ToDo );
	}
	
use Test::More tests => scalar @classes;

foreach my $class ( @classes )
	{
	use_ok( $class );
	}

