# ErrorHandlingExample Smart Contract

This Solidity smart contract demonstrates the usage of the `require()`, `assert()`, and `revert()` statements for error handling. These statements help ensure that the contract operates correctly by validating conditions, checking for internal errors, and handling exceptional cases.

## Features

- **Access Control**: Only the owner can perform certain actions.
- **Input Validation**: Ensures that provided values meet specific conditions.
- **Error Handling**: Demonstrates the use of `require()`, `assert()`, and `revert()` for proper error management.

## Contract Details

### State Variables

- `uint public value`: Stores a numeric value.
- `address public owner`: Stores the address of the contract owner.

### Modifiers

- `onlyOwner`: Ensures that the function can only be called by the contract owner.

### Functions

- `constructor()`: Initializes the contract by setting the deployer as the owner.
- `setValue(uint _value)`: Sets the value if it meets certain conditions.
- `resetValue()`: Resets the value to zero if it's not already zero.

## Usage

### Deployment

1. Deploy the contract using your preferred Ethereum development environment (e.g., Remix, Truffle).
2. The deployer address will be set as the initial owner.

### Functions

#### `setValue`

- **Description**: Sets the `value` if the provided `_value` is non-negative and less than or equal to 100.
- **Modifiers**: `onlyOwner`
- **Parameters**: `uint _value` - The value to be set.
- **Error Handling**:
  - Uses `require()` to ensure `_value` is non-negative.
  - Uses `assert()` to check that `_value` is within the expected range (0 to 100).

#### `resetValue`

- **Description**: Resets the `value` to zero if it's not already zero.
- **Modifiers**: `onlyOwner`
- **Error Handling**:
  - Uses `revert()` to stop execution and roll back state changes if `value` is already zero.

### Examples

1. **Setting a Value**:
   - Call `setValue` with a positive integer (e.g., `50`). The function will set `value` to `50` if the caller is the owner and `_value` is within the acceptable range.

   ```solidity
   contractInstance.setValue(50);

## Authors

Prajul Ahmad  
[@Coder](https://twitter.com/PrajulAhmad)


## License

None
