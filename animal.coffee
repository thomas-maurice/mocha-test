module.exports.Animal = class Animal
    constructor: (@name) ->
        @nickname = undefined
    getName: () => @name
    setNickname: (nick) -> @nickname = nick
    getNickname: () => @nickname
