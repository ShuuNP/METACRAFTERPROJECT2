## Prerequisites
This contract is written in Solidity and requires a version between 0.7.0 and 0.9.0.

## Features
- **Seller Management:** The contract initializes with the deployer as the seller.
- **Account Validation:** Only valid accounts (set by the seller) can set or modify the price.
- **Price Management:** Valid accounts can set a new price or apply a discount to the current price.
- **Price Reset:** Only the seller can reset the price to zero.

## Usage
- first add your account address to the valid account, you may add multiple addresses to simulate multiple moderators or seller.
![image](https://github.com/ShuuNP/METACRAFTERPROJECT2/assets/91449806/99e65ab3-95a4-404a-a536-cdf0d59fc013)

- add your price and click setprice (Or transact)
![image](https://github.com/ShuuNP/METACRAFTERPROJECT2/assets/91449806/3e958717-4275-4d5b-8fe2-6aa0da9131aa)

- you may check if the price is now added by click the price button.
![image](https://github.com/ShuuNP/METACRAFTERPROJECT2/assets/91449806/2aa496d4-d700-4d3c-a7fd-81e1e6dd8282)

- add discount, TAKE NOTE that this is in percentage, when you input 20, it means 20% not 20units off!
- you may also resetPrice if needed
- click price again to check if it worked.
![image](https://github.com/ShuuNP/METACRAFTERPROJECT2/assets/91449806/2a510702-be1e-482c-9ac1-52537cd886f7)

- Additional feature: you make input the address if it is one of the valid accounts, it will return true if it is otherwise it will return false
![image](https://github.com/ShuuNP/METACRAFTERPROJECT2/assets/91449806/cd9ed2d2-ab40-4494-9a8c-e983704b8ee0)


CONTACT
THOMAS GABRIELLE C. MANUEL
tomgab21@gmail.com

