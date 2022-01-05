pragma solidity ^0.5.0;

contract couplesList {
    uint256 public coupleCount = 0;

    struct Couple {
        uint256 id;
        string from;
        string to;
        int256 size;
    }

    mapping(uint256 => Couple) public couples;

    constructor() public {
        createCouple("Juan", "Lily", 5);
    }

    function createCouple(
        string memory _from,
        string memory _to,
        int256 _size
    ) public {
        coupleCount++;
        couples[coupleCount] = Couple(coupleCount, _from, _to, _size);
    }
}
