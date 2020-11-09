pragma solidity >=0.4.21 <0.6.0;

contract StudentInfo {
    
    uint256 public count;
    
    struct Student {
        address stdAddress;
        uint256 stdRollNo;
        string stdFirstName;
        string stdLastName;
        string stdDep;
        uint256 stdAge;
    }
    
    mapping (uint256 => Student) students;
    
    constructor() public {
       count = 0;
    }
    
    function storeStdData(uint256 _stdRollNo, string memory _stdFirstName, string  memory _stdLastName, string memory _stdDep, uint256 _stdAge) public {
        
        students[count].stdAddress = msg.sender;
        students[count].stdRollNo = _stdRollNo;
        students[count].stdFirstName = _stdFirstName;
        students[count].stdLastName = _stdLastName;
        students[count].stdDep = _stdDep;
        students[count].stdAge = _stdAge;
        count = count +1;
    }
    
    function retrieveStdData(uint256 _index) view public returns (address _address, uint256 _stdRollNo, string memory _stdFirstName, string  memory _stdLastName, string memory _stdDep, uint256 _stdAge){
        
        _address = students[_index].stdAddress;
        _stdRollNo = students[_index].stdRollNo;
        _stdFirstName = students[_index].stdFirstName;
        _stdLastName =students[_index].stdLastName;
        _stdDep = students[_index].stdDep;
        _stdAge = students[_index].stdAge;
    }
    
}