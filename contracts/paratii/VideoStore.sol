pragma solidity ^0.4.13;

import './ParatiiToken.sol';
import './VideoRegistry.sol';
/**
 * @title SendEther
 * @dev A Contract that wraps the native transfer function and logs an event.
 */

contract VideoStore {

    ParatiiToken paratiiToken;
    VideoRegistry videoRegistry;

    event LogBuyVideo(
      bytes32 videoId,
      address buyer,
      uint value
    );

    function VideoStore(ParatiiToken _paratiiToken, VideoRegistry _videoRegistry) {
      paratiiToken = _paratiiToken;
      videoRegistry = _videoRegistry;
    }

    // If someone accidentally sends ether to this contract, revert;
    function () {
        revert();
    }

    /**
     * @dev buyVideo buys a video
     * user needs to have
     */
    function buyVideo(bytes32 videoId) returns(bool)  {
       // get the info about the video
       /*address owner;*/
       /*uint price;*/
       /*videoRegistry.videos(videoId);*/
       var (owner, price) = videoRegistry.videos(videoId);
       /*paratiiToken.transferFrom(msg.sender, owner);*/

       return true;
    }

}