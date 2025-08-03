//SPDX-License-Identifier: MIT

pragma solidity ^0.8.29;

interface IEscrow {
    struct SwapParams {
        bytes32 orderHash;
        bytes32 hashlock;
        address maker;
        address taker;
        address token;
        uint256 amount;
        uint256 safetyDeposit;
        uint256 withdrawalTime;
        uint256 cancellationTime;
    }

    function withdraw(bytes32 secret) external;
    function withdrawTo(bytes32 secret, address to) external;
    function cancel() external;
    function publicWithdraw(bytes32 secret) external;
    function publicCancel() external;

    function getSwapParams() external view returns (SwapParams memory);
    function isWithdrawable() external view returns (bool);
    function isCancellable() external view returns (bool);
}
