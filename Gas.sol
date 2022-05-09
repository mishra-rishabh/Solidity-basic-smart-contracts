// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.0 <= 0.8.13 ;

contract Gas {
    /*
        Gas is a substance like air that is not a solid or a liquid.
        It is a state of matter that has no fixed shape and no fixed volume.

        HAHAHAHA😂...no😜... in ethereum the term gas has a different meaning.
        so, let's see what ethereum gas is.

        * Gas refers to the cost necessary to perform a transaction on the network.
        * Ethereum Gas is a unit that measures the amount of computational effort
          that it will take to execute certain operations.
        * Every single operation that takes part in Ethereum, be it a transaction
          or smart contract execution requires some amount of gas.
        * Gas fees are paid in Ethereum's native currency, ether (ETH).
        * Gas prices are denoted in gwei, which itself is a denomination of ETH.
          Each gwei is equal to 0.000000001 ETH (10^-9 ETH).

          example: 1 gwei = 1,000,000,000 wei or 10^9 wei
                   1 ether = 1,000,000,000,000,000,000 wei or 10^18 wei
                   so,
                   1 wei = 10^-9 gwei
                   1 wei = 10^-18 eth
                   10^-9 gwei = 10^-18 eth
                   so, 1 gwei = 10^-9 eth
            
        Now Let's say Shane had to pay David 1 ETH. In the transaction, the gas limit is 21,000 units,
        and the gas price is 200 gwei.
        
        => gas is a unit of computation
        => gas spent is the total amount of gas used in a transaction
        => gas price is how much ether you are willing to pay per gas

        Total fees: Gas units (limit) * Gas price per unit
        i.e 21,000 * 200 = 4,200,000 gwei or 0.0042 ETH

        When Shane sent the money, 1.0042 ETH would be deducted from Shane's account.
        David would be credited 1.0000 ETH. Miner would receive 0.0042 ETH.

        * Transactions with higher gas price have higher priority to be included in a block.
    */

    uint public counter = 0 ;

    // Using up all of the gas that you send causes your transaction to fail.
    // State changes are undone.
    // Gas spent are not refunded.
    function infinity() public {
        // Here we run a loop until all of the gas are spent
        // and the transaction fails
        while( true ) {
            counter++ ;
        }
    }
}