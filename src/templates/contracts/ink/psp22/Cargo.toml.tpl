[package]
name = "{{contract_name_snake}}"
version = "0.1.0"
authors = ["{{author_name}}"]
edition = "2021"

[dependencies]
ink_primitives = { tag = "v3.0.1", git = "https://github.com/paritytech/ink", default-features = false }
ink_metadata = { tag = "v3.0.1", git = "https://github.com/paritytech/ink", default-features = false, features = ["derive"], optional = true }
ink_env = { tag = "v3.0.1", git = "https://github.com/paritytech/ink", default-features = false }
ink_storage = { tag = "v3.0.1", git = "https://github.com/paritytech/ink", default-features = false }
ink_lang = { tag = "v3.0.1", git = "https://github.com/paritytech/ink", default-features = false }
ink_prelude = { tag = "v3.0.1", git = "https://github.com/paritytech/ink", default-features = false }

scale = { package = "parity-scale-codec", version = "3", default-features = false, features = ["derive"] }
scale-info = { version = "2", default-features = false, features = ["derive"], optional = true }

# These dependencies
brush = { tag = "v1.6.1", git = "https://github.com/Supercolony-net/openbrush-contracts", default-features = false, features = ["psp22"] }

[lib]
name = "{{contract_name_snake}}"
path = "src/lib.rs"
crate-type = [
    # Used for normal contract Wasm blobs.
    "cdylib",
]

[features]
default = ["std"]
std = [
    "ink_primitives/std",
    "ink_metadata",
    "ink_metadata/std",
    "ink_env/std",
    "ink_storage/std",
    "ink_lang/std",
    "scale/std",
    "scale-info",
    "scale-info/std",

    # These dependencies
    "brush/std",
]
ink-as-dependency = []

[profile.dev]
codegen-units = 16
