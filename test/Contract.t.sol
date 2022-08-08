// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../utils/vyperDeployer.sol";
import "./interface/ICountContract.sol";

contract ContractTest is Test {
    VyperDeployer deployer = new VyperDeployer();
    ICountContract countContract;

    function setUp() public {
        countContract = ICountContract(deployer.deployContract('CountContract', abi.encode(1)));
    }

    function testIncrement() public {
        assertEq(countContract.getCount(), 1);
        countContract.increment();
        assertEq(countContract.getCount(), 2);
    }

    function testDecrement() public {
        assertEq(countContract.getCount(), 1);
        countContract.decrement();
        assertEq(countContract.getCount(), 0);
    }

    function testSetCount() public {
        assertEq(countContract.getCount(), 1);
        countContract.setCount(5);
        assertEq(countContract.getCount(), 5);
    }
}
