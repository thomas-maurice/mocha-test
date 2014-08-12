var should = require('chai').should();

describe('Array', function() {
    before(function() {
        tab = [1, 2, 3];
    });
    
    it("should return -1 when the value is not present", function() {
        tab.indexOf(4).should.eql(-1);
    });
    
    it("should return something when the value is present", function() {
        tab.indexOf(3).should.not.be.eql(-1);
    });
});

describe('String', function() {
    it("should contain 'test'", function() {
        "ceci est un test".should.include('test');
    })
});

describe('Functions', function() {
   it('should type function', function() {
        (function () {}).should.be.a('function')
   }); 
});

describe('Timeouts', function() {
    describe("#setTimeout", function() {
        it("should be asynchronous", function(done) {
            setTimeout(function() {done();}, 1000);
        })
    });
});
