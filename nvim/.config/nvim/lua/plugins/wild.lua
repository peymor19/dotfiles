return {
    "peymor19/wild.nvim" ,
    dependencies = { "romgrk/fzy-lua-native" },
    config = function ()
        local wild = require('wild')
        wild:setup()
    end
}
