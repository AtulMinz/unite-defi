//SPDX-License-Identifier: MIT

pragma solidity ^0.8.29;

import {IEscrow} from "./interfaces/IEscrow.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

contract Escrow is IEscrow, ReentrancyGuard {}
