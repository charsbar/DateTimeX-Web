use strict;
use warnings;
use Test::More qw(no_plan);
use DateTimeX::Web;

my %args = (
  year   => 2000,
  month  => 5,
  day    => 6,
  hour   => 15,
  minute => 37,
  second => 45,
);

{ # create a DateTime object with now
  my $dtx = DateTimeX::Web->new;

  my $dt = $dtx->now;
  ok defined $dt;
  ok $dt->isa('DateTime');
}

{ # create a DateTime object with from_epoch
  my $dtx = DateTimeX::Web->new;

  my $dt = $dtx->from_epoch(time);
  ok defined $dt;
  ok $dt->isa('DateTime');
}

{ # from_epoch can have "epoch =>"
  my $dtx = DateTimeX::Web->new;

  my $dt = $dtx->from_epoch(epoch => time);
  ok defined $dt;
  ok $dt->isa('DateTime');
}

{ # create a DateTime object with from and epoch
  my $dtx = DateTimeX::Web->new;

  my $dt = $dtx->from(epoch => time);
  ok defined $dt;
  ok $dt->isa('DateTime');
}

{ # create a DateTime object with from and args
  my $dtx = DateTimeX::Web->new;

  my $dt = $dtx->from( %args );
  ok defined $dt;
  ok $dt->isa('DateTime');
}
