use PDL::Core::Dev;
use ExtUtils::MakeMaker;

$package = ["aquaterm.pd",AquaTerm,PDL::Graphics::AquaTerm];

# the hash helps dh-make-perl to find needed name and version strings

%hash=(                                                                                                        
	pdlpp_stdargs($package),
	
	'NAME'			=> 'PDL::Graphics::AquaTerm',                                                                       
	'VERSION_FROM'	=> 'aquaterm.pd',
	'LIBS'			=> '-laquaterm',
);

WriteMakefile( %hash );

sub MY::postamble {pdlpp_postamble($package)};
