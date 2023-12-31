
#[contract]
mod HelloStarknetDefiNet {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn GoodbyeRaw(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Goodbye(message: felt252) {
        let caller = get_caller_address();
        HelloGoodbye(caller, message);
    }

}
