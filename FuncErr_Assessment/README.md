# ErrorHandlingExample Smart Contract

This Solidity smart contract showcases how to use `require()`, `assert()`, and `revert()` for effective error handling. These mechanisms help ensure that the contract operates as intended by checking conditions, validating inputs, and managing exceptional cases.

## Features

- **Owner-Only Functions**: Certain functions can only be called by the contract owner.
- **Input Checks**: Ensures that provided values are within acceptable ranges.
- **Error Handling**: Demonstrates practical use of `require()`, `assert()`, and `revert()` statements.

## Contract Overview

### State Variables

- `uint public value`: Holds a numeric value.
- `address public owner`: Holds the address of the contract owner.

### Modifiers

- `onlyOwner`: Restricts function access to only the contract owner.

### Functions

- `constructor()`: Sets the deployer as the initial contract owner.
- `setValue(uint _value)`: Updates the `value` if certain conditions are met.
- `resetValue()`: Resets `value` to zero if it's not already zero.

## Usage

### Deployment

1. Deploy the contract using an Ethereum development tool like Remix or Truffle.
2. The address that deploys the contract will be set as the owner.

### Function Details

#### `setValue`

- **Purpose**: Sets the `value` to a given number, `_value`, provided it is non-negative and does not exceed 100.
- **Access**: Restricted to the owner.
- **Parameters**: `uint _value` - The value to set.
- **Checks**:
  - Uses `require()` to ensure `_value` is non-negative.
  - Uses `assert()` to ensure `_value` does not exceed 100.

#### `resetValue`

- **Purpose**: Resets `value` to zero, but only if it isn't already zero.
- **Access**: Restricted to the owner.
- **Checks**:
  - Uses `revert()` to stop execution and revert any changes if `value` is already zero.

### Examples

1. **Setting a Value**:
   - Call `setValue` with a positive integer (e.g., `50`). The function will set `value` to `50` if the caller is the owner and `_value` is within the acceptable range.

## Authors

Prajul Ahmad  
[@Coder](https://twitter.com/PrajulAhmad)


## License

This project is licensed under the MIT License.
