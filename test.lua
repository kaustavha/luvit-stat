local fs = require('fs')
local stat = require('./main').stat

require('tap')(function(test)
  test('Test stat', function(expect)
    local file = 'stat_test.txt'
    fs.writeFileSync(file, '')
    stat(file, function(err, data)
      fs.unlinkSync(file)
      assert(data.octalFilePerms == '644')
    end)
  end)
end)
