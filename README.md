# Take-Home-Tasks

StakeDaoPerpVault Solidity smart contracts

## Prerequisites

- [NodeJS](https://nodejs.org/en/)
  - v12.22.4 <=

## Installation

To install all necessary dependencies, from project root run:

```shell
npm ci
```

add a `.secret` file containing your testing mnemonic at the project root folder.

## Compiling contracts

To compile the contracts, from project root run:

```shell
npm run compile
```

## Testing contracts

To test the contracts, from project root run the following:

### Running unit tests

```shell
npm run test
```
# Deliverable

## Function declaration
public functions that are never called by the contract should be declared external to save gas.
Functions: ShortOTokenActionWithSwap.sol / closePositions()

## Length of array in a loop
The length of an array should not be declared in a for-loop header
OpynPerpVault.sol / setActions(), totalStakedaoAsset(), closePositions(), rollOver()

## Add Immutable State Variables
Token addresses such as  `ecrv`, `weth` should be defined as Immutable
OpynPerpVault.sol / line 81
ShortOTokenActionWithSwap.sol / line 54, 57

## Version Upgrade
Starting from solidity version 0.8.0, arithmetic operations revert on underflow and overflow. So there’s no more need to use Safemath library.
Using built-in arithmetic will be less expensive than Safemath function calls.
