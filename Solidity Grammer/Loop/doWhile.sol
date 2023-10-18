// SPDX-License-Identifier: MIT
pragma solidity >= 0.7.0 < 0.9.0;

contract Loop {
    uint[] public num;

    function doWhileLoop() public {
        uint x = 0;
        do{
            num.push(x*3);
            x++;
        } while (x != 5);
    }

    event CountryIndexName(uint256 indexed _index, string _name);
    string[] private countryList = ["South", "North", "USA", "China", "Japan"];

    function forLoopEvents() public {
        for(uint256 i = 0; i < countryList.length; i++) {
            emit CountryIndexName(i, countryList[i]);
        }
    }

}