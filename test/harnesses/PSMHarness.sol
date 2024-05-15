// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity ^0.8.13;

import { PSM } from "src/PSM.sol";

contract PSMHarness is PSM {

    constructor(address asset0_, address asset1_, address rateProvider_)
        PSM(asset0_, asset1_, rateProvider_) {}

    function getAssetValue(address asset, uint256 amount) external view returns (uint256) {
        return _getAssetValue(asset, amount);
    }

    function getAssetsByValue(address asset, uint256 assetValue) external view returns (uint256) {
        return _getAssetsByValue(asset, assetValue);
    }

    function getAsset0Value(uint256 amount) external view returns (uint256) {
        return _getAsset0Value(amount);
    }

    function getAsset1Value(uint256 amount) external view returns (uint256) {
        return _getAsset1Value(amount);
    }

}