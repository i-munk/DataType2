// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract DataType2 {
    string private message = "Hello, Solidity!";
    uint256[] private numbers;
    string[] private names;

    struct User {
        string name;
        uint256 age;
    }

    mapping(address => uint256) private balances;
    mapping(address => User) private users;

    bytes private dynamicData;
    bytes32 private fixedData = 0xabcdef1234560000000000000000000000000000000000000000000000000000;

    // Message functions
    function getMessage() public view returns (string memory) {
        return message;
    }

    function setMessage(string memory _message) public {
        message = _message;
    }

    // Numbers functions
    function getNumbers() public view returns (uint256[] memory) {
        return numbers;
    }

    function addNumber(uint256 _number) public {
        numbers.push(_number);
    }

    function getNumber(uint256 index) public view returns (uint256) {
        return numbers[index];
    }

    // Names functions
    function getNames() public view returns (string[] memory) {
        return names;
    }

    function addName(string memory _name) public {
        names.push(_name);
    }

    // Balances functions
    function setBalance(address _addr, uint256 _balance) public {
        balances[_addr] = _balance;
    }

    function getBalance(address _addr) public view returns (uint256) {
        return balances[_addr];
    }

    // Users functions
    function setUser(address _addr, string memory _name, uint256 _age) public {
        users[_addr] = User(_name, _age);
    }

    function getUser(address _addr) public view returns (string memory, uint256) {
        User memory user = users[_addr];
        return (user.name, user.age);
    }

    // Bytes functions
    function setDynamicData(bytes memory _data) public {
        dynamicData = _data;
    }

    function getDynamicData() public view returns (bytes memory) {
        return dynamicData;
    }

    function setFixedData(bytes32 _data) public {
        fixedData = _data;
    }

    function getFixedData() public view returns (bytes32) {
        return fixedData;
    }

    // Details function
    function getDetails() public view returns (
        string memory,
        uint256[] memory,
        string[] memory,
        bytes32,
        bytes memory
    ) {
        return (message, numbers, names, fixedData, dynamicData);
    }
}