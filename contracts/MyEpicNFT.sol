// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";


contract MyEpicNFT is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("SquareNFT" , "SQUARE"){
        console.log("Whoa!, I'm finally doing that NFT stuff ha ha!");
    }

    function makeAnEpicNFT() public {

        uint256 newItemId = _tokenIds.current();

        _safeMint(msg.sender , newItemId);

        _setTokenURI(newItemId, "data:application/json;base64,ewoibmFtZSI6ICJBIEJPWCIsCiJkZXNjcmlwdGlvbiI6ICJXaGF0IGRvIHlvdSBzZWUuLi4iLAoiaW1hZ2UiOiAiZGF0YTppbWFnZS9zdmcreG1sO2Jhc2U2NCxQSE4yWnlCNGJXeHVjejBpYUhSMGNEb3ZMM2QzZHk1M015NXZjbWN2TWpBd01DOXpkbWNpSUhkcFpIUm9QU0kwTURBaUlHaGxhV2RvZEQwaU5EQXdJaUIyYVdWM1FtOTRQU0l3SURBZ05EQXdJRFF3TUNJK1BIQmhkR2dnWkQwaVRUYzRMalFnTnpNdU9ETTBZeTB5TGpVNU5DNDFNVFV0TkM0d055QXlMakF6TkMwMExqVTNOeUEwTGpjd09TMHVNall4SURFdU16YzFMUzR5TmpFZ01qUXhMalV6T1NBd0lESTBNaTQ1TVRRdU5ETXlJREl1TWpjNElERXVOalEwSURNdU56Z3lJRE11TlRrM0lEUXVORFkwSURFdU5UVTJMalUwTXlBeU5ETXVOakEwTGpVME15QXlORFV1TVRZZ01DQXhMamsxTXkwdU5qZ3lJRE11TVRZMUxUSXVNVGcySURNdU5UazNMVFF1TkRZMExqSTJNUzB4TGpNM05TNHlOakV0TWpReExqVXpPU0F3TFRJME1pNDVNVFF0TGpReU1TMHlMakl5TVMweExqVTVOaTB6TGpjeU1TMHpMalE1TlMwMExqUTJMUzQ1TnpZdExqTTRMVEkwTWk0ek9EVXRMall5TnkweU5EUXVNamd5TFM0eU5EbE5NekV6TGpZM01pQXlNREIyTVRFekxqWTNNa2c0Tmk0ek1qaFdPRFl1TXpJNGFESXlOeTR6TkRSV01qQXdJaUJtYVd4c1BTSWpNRFF3TkRBMElpQm1hV3hzTFhKMWJHVTlJbVYyWlc1dlpHUWlMejQ4TDNOMlp6ND0iCn0=");
        
        console.log("An NFT w/ ID %s has been minted to %s", newItemId, msg.sender);

        _tokenIds.increment();

    }
}



