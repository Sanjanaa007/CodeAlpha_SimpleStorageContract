// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title Simple Storage Contract
/// @notice Stores a number and lets you increment or decrement it
/// @author K. Sanjana
contract SimpleStorage {
    int256 public value; // public = auto-generates a getter, readable from outside

    /// @notice Increases the stored value by 1
    function increment() external {
        value += 1;
    }

    /// @notice Decreases the stored value by 1
    function decrement() external {
        value -= 1;
    }

    /// @notice Explicit read function (in addition to the auto-generated public getter)
    function getValue() external view returns (int256) {
        return value;
    }
}
