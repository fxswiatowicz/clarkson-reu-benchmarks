#!/usr/bin/env python2
#pylint: disable=missing-docstring
#* This file is part of the MOOSE framework
#* https://www.mooseframework.org
#*
#* All rights reserved, see COPYRIGHT for full restrictions
#* https://github.com/idaholab/moose/blob/master/COPYRIGHT
#*
#* Licensed under LGPL 2.1, please see LICENSE for details
#* https://www.gnu.org/licenses/lgpl-2.1.html

import chigger

reader = chigger.exodus.ExodusReader('../input/displace.e', displacement_magnitude=2)
exodus = chigger.exodus.ExodusResult(reader, color=[0,0,1])
exodus.setOptions('colorbar', visible=False)

window = chigger.RenderWindow(exodus, size=[300,300], test=True)

reader.update()
times = reader.getTimes()
for i in range(4):
    reader.setOptions(timestep=None, time=times[i])
    window.write('displacement_mag_' + str(i) + '.png')
window.start()
