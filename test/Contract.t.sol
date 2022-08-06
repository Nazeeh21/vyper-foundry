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
        countContract.increment();
        emit log_uint(countContract.getCount());
        // assertEq(countContract.count(), 2);
    }
}
