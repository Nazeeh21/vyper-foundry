// SPDX-License-Identifier: MIT
pragma solidity >=0.8.13;

interface ICountContract {
    function setCount(uint256 _count) external;

    function increment() external;

    function decrement() external;

    function getCount() external returns (uint256);
}