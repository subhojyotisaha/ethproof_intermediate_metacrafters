//SPDX-License-Indentifier: MIT

pragma solidity ^0.8.17;

contract Modifier{

    mapping(address => uint) public admins;

    constructor(){
        admins[msg.sender] = 1;
    }


    modifier onlyAdmin(){
        require(admins[msg.sender] == 1, "You do not have admin priviledges!");
        _;
    }

    function addAdmin(address _newAdmin) public onlyAdmin{
        admins[_newAdmin] = 1;
    }

    function removeAdmin(address _oldadmin) public onlyAdmin{
        delete admins[_oldadmin];
    }
}
