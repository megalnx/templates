
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

// Include gtk
#include <gtk/gtk.h>

int main (int argc, char *argv[]) {
  
  GtkWidget *window;

  gtk_init(&argc, &argv);
 
  // Create a new window 
  window = gtk_window_new(GTK_WINDOW_TOPLEVEL);
  
  // Create a new button
  GtkWidget *button = gtk_button_new_with_label ("Hello, World!");

  gtk_container_add (GTK_CONTAINER(window), button);
  gtk_widget_show_all(window);

  // When the button is clicked, destroy the window passed as an argument
  g_signal_connect(window, "destroy", G_CALLBACK (gtk_main_quit), NULL);

  gtk_main();

  return 0;
}

