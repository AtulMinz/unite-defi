// SPDX-License-Identifier: MIT

pragma solidity ^0.8.29;

library TimelocksLib {
    struct Timelocks {
        uint256 withdrawalPeriod;
        uint256 cancellationPeriod;
    }

    function unpack(uint256 packed) internal pure returns (Timelocks memory) {
        return Timelocks({
            withdrawalPeriod: packed & 0xFFFFFFFFFFFFFFFF,
            cancellationPeriod: (packed >> 64) & 0xFFFFFFFFFFFFFFFF
        });
    }

    function pack(Timelocks memory timelocks) internal pure returns (uint256) {
        return timelocks.withdrawalPeriod | (timelocks.cancellationPeriod << 64);
    }
}
