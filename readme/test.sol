pragma solidity ^0.4.24

import "truffle/Assert.sol"
import "truffle/DeployedAddresses.sol"
import "../contracts/SimpleBank.sol"

contract TestSimpleBank {


/*
(0) 0x627306090abab3a6e1400e9345bc60c78a8bef57
(1) 0xf17f52151ebef6c7334fad080c5704d77216b732
(2) 0xc5fdf4076b8f3a5357c5e395ab970b5b54098fef
(3) 0x821aea9a577a9b44299b9c15c88cf3087f3b5544
(4) 0x0d1d4e623d10f9fba5db95830f7d3839406c6af2
(5) 0x2932b7a2355d6fecc4b5c0b6bd44cc31df247a2e
(6) 0x2191ef87e392377ec08e7c08eb105ef5448eced5
(7) 0x0f4f2ac550a1b4e2280d04c21cea7ebd822934b5
(8) 0x6330a553fc93768f612722bb8c2ec78ac90b3bbc
(9) 0x5aeda56215b167893e80b4fe645ba6d5bab767de
*/


function testInitialValues() {
    SimpleBank mySimpleBank = SimpleBank(DeployedAddresses.SimpleBank());

    var alice = '0x627306090abab3a6e1400e9345bc60c78a8bef57';

    mySimpleBank.enroll({from: alice});

    uint expected = 1000;
    uint actual = mySimpleBank.balance({from: alice});

    Assert.equal(actual, expected, 'enroll balance is incorrect, check balance method or constructor');
    }//function

}//contract
