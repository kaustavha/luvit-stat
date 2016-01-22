# Luvit stat
A easy to understand file-permissions/stat data fetching utility. 
Instead of returning just the mode this utility will return the far easier to understand octal file permissions of the specified file and information about whether a gid, uid and stickybit are set. 

```
> lit install kaustavha/luvit-stat
local stat = require('luvit-stat')
stat('./file.txt', function(err, data)
  p(err)
  p(data.octalFilePerms)
  p(data.setuid)
  p(data.setgid)
  p(data.stickyBit)
end)
```
## Testing

```
lit install luvit/tap
luvit test.lua
```

## License
(The MIT License)

Copyright (c) 2011-2016 Kaustav Haldar <hi@kaustav.me>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
