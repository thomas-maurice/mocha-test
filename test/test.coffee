should = require('chai').should()
expect = require('chai').expect
animal = require '../animal'

describe "Animal", ->
    pifou = undefined
    before ->
        pifou = new animal.Animal("Dog")
    it "should not have a nickname at first", ->
        (pifou.nickname == undefined).should.be.true
    it "should be able to be set a nickname", ->
        pifou.setNickname "glopglop"
        pifou.getNickname().should.equals "glopglop"
