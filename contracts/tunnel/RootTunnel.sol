pragma solidity 0.6.6;

import {BaseRootTunnel} from "./BaseRootTunnel.sol";


contract RootTunnel is BaseRootTunnel {
    function _processMessageFromChild(bytes memory message) internal override {
      // you can implement custom message processing logic here
    }
}
