Attributeless NFT Metadata Generator
=====================================

Simple script to create metadata for NFTs that are already generated.

Add images to `/assets` folder, enter base info in `main.rb`, then run with:
```
ruby main.rb
```

JSON is written to `/output` folder 😶‍🌫️

If you need to duplicate a file (for something like a minting pass) - add file to `/assets` folder and run `ruby dupe.rb`, then run the `main.rb` script to apply metadata to the files.