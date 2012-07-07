----------------------------------------------------------------------
-- getstarted.lua
-- 
-- This script demonstrates very basic Lua/Torch stuff.

-- To run this script, simply do:
-- torch getstarted.lua
-- and then press 'y' or 'return' at each step, to keep going, or 'n'
-- to terminate.

----------------------------------------------------------------------
-- little function to pause execution, and request user input
function next()
   local answer = nil
   while answer ~= '' and answer ~= 'y' and answer ~= 'Y' and neverstall ~= true do
      io.write("continue ([y]/n/!)? ")
      io.flush()
      answer=io.read()
      if answer == '!' then
         neverstall = true
      end
      if answer == 'n' then
         print('exiting...')
         os.exit()
      end
   end
   print ''
end

----------------------------------------------------------------------
-- snippet 1
print('basic printing')
a = 10
print(a)
print 'something'
print(type(a))
print(type('something'))
next()

----------------------------------------------------------------------
-- snippet 3
require 'image'
i = image.lena()
image.display(i)
next()

----------------------------------------------------------------------
-- snippet 4
require 'nn'
n = nn.SpatialConvolution(1,16,12,12)
image.display{image=n.weight, padding=2, zoom=4, legend='filters'}
next()

----------------------------------------------------------------------
-- snippet 5
n:forward(image.rgb2y(i))
image.display{image=n.output, padding=2, zoom=0.25, legend='states'}
next()

----------------------------------------------------------------------
-- snippet 6
browse()
next()
