// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../utils/vyperDeployer.sol";

interface ICountContract {
    function setCount(uint256 _count) external;

    function increment() external;

    function decrement() external;
}

contract ContractTest is Test {
    VyperDeployer deployer = new VyperDeployer();
    ICountContract countContract;

    function setUp(uint initialVal) public {
        countContract = ICountContract(deployer.deployContract('CountContract', [initialVal]));
    }

    function testIncrement() public {
        countContract.increment();
        emit log_int(countContract.count());
        // assertEq(countContract.count(), 2);
    }
}
