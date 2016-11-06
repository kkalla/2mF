SET lp TO SHIP:GEOPOSITION.
COPYPATH("0:touchdown", "touchdown").
WAIT 10.
LOCK STEERING TO UP.
LOCK THROTTLE TO 1.
STAGE.
TOGGLE GEAR.
WAIT 10.
TOGGLE RCS.
LOCK THROTTLE TO 0.
WAIT UNTIL SHIP:VERTICALSPEED < 0.
WAIT UNTIL ALT:RADAR < 1500.
RUN TOUCHDOWN(lp, 1.3).
SET SHIP:CONTROL:PILOTMAINTHROTTLE TO 0.
LOCK THROTTLE TO 0.

