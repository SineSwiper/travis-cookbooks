default[:perlbrew] = {
  :perls   => [{ :name => "5.16", :version => "perl-5.16.0" },
               { :name => "5.14", :version => "perl-5.14.2" },
               { :name => "5.12", :version => "perl-5.12.4" },
               { :name => "5.10", :version => "perl-5.10.1" }],
  :modules => %w(Dist::Zilla Moose Catalyst LWP Module::Install Test::Most)
}
