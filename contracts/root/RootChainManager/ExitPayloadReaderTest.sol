pragma solidity 0.6.6;
pragma experimental ABIEncoderV2;

import {RootChainManager} from "./RootChainManager.sol";
import {ExitPayloadReader} from "../../lib/ExitPayloadReader.sol";

contract ExitPayloadReaderTest {
    using ExitPayloadReader for bytes;
    using ExitPayloadReader for ExitPayloadReader.ExitPayload;
    using ExitPayloadReader for ExitPayloadReader.Receipt;

    function tryParseReceipt(bytes memory receiptOrBytes) public pure returns(ExitPayloadReader.Receipt memory) {
        return receiptOrBytes.toExitPayload().getReceipt();
    }
}
