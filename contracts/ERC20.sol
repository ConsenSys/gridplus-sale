//ERC20 specification plus a burn function
pragma solidity ^0.4.8;

contract ERC20 {

    // Events
    //event Transfer(address indexed from, address indexed to, uint value);
    event Transfer(address indexed from, address indexed to, uint value);
    event Approval( address indexed owner, address indexed spender, uint value);

    // Stateless functions
    function totalSupply() constant returns (uint supply);
    function balanceOf( address who ) constant returns (uint value);
    function allowance(address owner, address spender) constant returns (uint value);

    // Stateful functions
    function transfer( address to, uint value) returns (bool ok);
    function transferFrom( address from, address to, uint value) returns (bool ok);
    function approve(address spender, uint value) returns (bool ok);

    // Extension
    function provable_redemption(bytes32[3] data, uint256 value) returns (bool ok);
}
