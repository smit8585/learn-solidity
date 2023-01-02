pragma solidity >= 0.5.0 < 0.9.0;

contract energytrade{
    uint public energy;
    string public value;
    // address public ownwe;
    // uint intial;
    // function initial_energy(uint new_enr) public
    // {
    //     intial = new_enr;
    // } 
    constructor(uint _intial) public
    {
        energy += _intial;
        // owner = msg.sender;
        // return balance;
    }
    // string memory value;  //= "unable to perform the operation due to low balance";
    function addeng(uint adden) public
    {
        energy += adden;
        // return energy;
    }
    function withdraw(uint withd) public returns(string memory){
        if(energy>=withd)
        {
            energy = energy - withd;
            value = "withdraw sucessfull";
        }
        else{
            value = "Invalid amount";
        }
        return value;
    }
}