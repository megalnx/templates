
# Copyright 2020 William PC (Slack-it)- Seattle, USA
# All rights reserved.
#
# Redistribution and use of this script, with or without modification, is
# permitted provided that the following conditions are met:
#
# 1. Redistributions of this script must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
#  THIS SOFTWARE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY EXPRESS OR IMPLIED
#  WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
#  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO
#  EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
#  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


#!/usr/bin/env perl
use strict; use warnings; use utf8;
use Glib::IO;
use Gtk3;

# Create a new application
my $app =
  Gtk3::Application->new('com.example.Gtk3Application', 'G_APPLICATION_FLAGS_NONE');

# When the application is launched
$app->signal_connect(
  activate => sub {
    my $app = shift;
    # create a new window 
    my $win = Gtk3::ApplicationWindow->new($app);
    # with a button in it
    my $btn = Gtk3::Button->new('Hello World!');
    # which closes the window when clicked
    $btn->signal_connect(clicked => sub { $win->destroy });
    $win->add($btn);
    $win->show_all();
  }
);

# Run the application
$app->run(\@ARGV);

