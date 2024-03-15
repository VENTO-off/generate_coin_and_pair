module coin_owner::FTY {

    use bapt_framework_testnet::deployer_v2;
    use std::string;

    struct FTY {}

    fun init_module(sender: &signer) {
        deployer_v2::generate_coin_and_pair<FTY>(
            sender,
            string::utf8(b"rgrg"),
            string::utf8(b"FTY"),
            8,
            10000000000000000,
            true,
            false,
            0,
            0,
            0,
        );
    }
}
