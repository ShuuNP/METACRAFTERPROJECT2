# MyToken Smart Contract

## Overview

`MyToken` is an improved version of a previous token contract project. This version demonstrates the use of `require()`, `assert()`, and `revert()` statements for error handling and validation. The contract includes functionality to mint new tokens, burn existing tokens, and handle division operations with error checking.


## Functions

### mint

Mints new tokens and adds them to the balance of the specified address. This function uses the `require()` statement to ensure that the address is valid and the value is greater than 50. ( for this project i used 50, but it can be anything based on your requirements.)

## USAGE
![image](https://github.com/ShuuNP/METACRAFTERPROJECT2/assets/91449806/34654f87-cbac-4eb2-9532-56352c6ce9fb)

when `minting` a value above 50 this will show, but if lesser an error with error description will show.
as shown below.
![image](https://github.com/ShuuNP/METACRAFTERPROJECT2/assets/91449806/f6c5fecb-016e-4da5-b538-704574f4b1ac)


For `burning`, we can assume a scenario a specific price burn is 50 or above so first require is that it should be higer than 50, and of course the obvious one is that it should be lesser than the total supply we have currently.

if we tried to burn less than 50 an error description will show
![image](https://github.com/ShuuNP/METACRAFTERPROJECT2/assets/91449806/d0f7ed47-7af0-4cff-9da5-d99fb54eb6f9)

and if greater than total supply an error will show.
![image](https://github.com/ShuuNP/METACRAFTERPROJECT2/assets/91449806/dc71d19c-22c2-4f2d-a561-713c923f8e15)




