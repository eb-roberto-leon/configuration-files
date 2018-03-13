if $(xfconf-query -c xfwm4 -p /general/cycle_workspaces)
then
  xfconf-query -c xfwm4 -p /general/cycle_workspaces -s false
else
  xfconf-query -c xfwm4 -p /general/cycle_workspaces -s true
fi
