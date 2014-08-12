should = require('chai').should()
expect = require('chai').expect
animal = require '../animal'

describe "Animal", ->
    pifou = undefined
    before ->
        pifou = new animal.Animal("dog")
    describe "#constructor", ->
        it "should not have a nickname at first", ->
            (pifou.nickname == undefined).should.be.true
        it "should have the good type", ->
            (pifou.name).should.equals("dog")
    describe "#setNickname", ->
        it "should be able to be set a nickname", ->
            pifou.setNickname "glopglop"
            pifou.getNickname().should.equals "glopglop"

describe 'Functions', ->
    it 'should be a function', ->
        (->).should.be.a 'function'

describe 'Timeouts', ->
    it 'Should take some time', (done) ->
        setTimeout ->
                done()
            , 1000
