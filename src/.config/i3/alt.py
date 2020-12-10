#!/usr/bin/env python3

import i3ipc

# Create the Connection object that can be used to send commands and subscribe
# to events.
i3 = i3ipc.Connection()


def on_window_size_change(i3, e):
   # reset split setting for all windows based on new width and height
   for con in i3.get_tree():
      if (con.type == 'con' and con.window_class != None):
         if (con.rect.height > con.rect.width):
            con.command('split vertical')
         else:
            con.command('split horizontal')

   """
   focused = i3.get_tree().find_focused()
   print(focused.props)
   print('New/moved window %s is on workspace %s' % \
         (focused.name, focused.workspace().name))
   if (focused.rect.height > focused.rect.width):
      focused.command('split vertical')
   else:
      focused.command('split horizontal')

   if (focused.parent.rect.height > focused.parent.rect.width):
      print(focused.parent.command('split vertical'))
   else:
      print(focused.parent.command('split horizontal'))
   """

# Subscribe to events
i3.on("window::new", on_window_size_change)
i3.on("window::move", on_window_size_change)
i3.on("window::close", on_window_size_change)

# Start the main loop and wait for events to come in.
i3.main()
