// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Search {
     event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["South", "North", "USA", "China", "Japan"];

    // Strings cannot be compared within Solidity.
    // Convert the string to a binary value, hash it (keccak256), and compare.
    // The parameter of keccak256 is byte types.
    function linearSearch(string memory _search) public view returns(uint256, string memory) {
        for(uint256 i = 0; i< countryList.length; i++) {
            
            if(keccak256(bytes(countryList[i])) == keccak256(bytes(_search))){
                return (i, countryList[i]);
            }
        }

        return(0, "Nothing");
    }
}