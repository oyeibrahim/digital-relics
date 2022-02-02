// SPDX-License-Identifier: --🦉--

pragma solidity =0.7.6;

import "./Declaration.sol";

abstract contract Timing is Declaration {

    function currentDreDay() public view returns (uint64) {
        return _getNow() >= LAUNCH_TIME ? _currentDreDay() : 0;
    }

    function _currentDreDay() internal view returns (uint64) {
        return _dreDayFromStamp(_getNow());
    }

    function _nextDreDay() internal view returns (uint64) {
        return _currentDreDay() + 1;
    }

    function _previousDreDay() internal view returns (uint64) {
        return _currentDreDay() - 1;
    }

    function _dreDayFromStamp(uint256 _timestamp) internal view returns (uint64) {
        return uint64((_timestamp - LAUNCH_TIME) / SECONDS_IN_DAY);
    }

    function _getNow() internal view returns (uint256) {
        return block.timestamp;
    }
}