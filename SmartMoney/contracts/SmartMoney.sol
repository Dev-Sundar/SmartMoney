// SPDX-License-Identifier:MIT

pragma solidity 0.8.23;


contract SendWithdrawMoney{
    
    uint public BalanceRecived;
    function Deposit() public payable {
            BalanceRecived += msg.value;
    }

    function GetContractBalance() public view returns(uint){
        return address(this).balance;
    }

    function WithdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(GetContractBalance());
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(GetContractBalance());
    }

}