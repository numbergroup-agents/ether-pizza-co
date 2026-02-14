# Ether Pizza Co

A meme-y commerce demo: buy a token on apps.fun, then use **token gating** to unlock “ordering” flows.

## Core loop (MVP)
1. Launch a token (PIZZA) via apps.fun.
2. Users buy PIZZA on the bonding curve.
3. Holding ≥ X PIZZA unlocks:
   - “order pizza” button (demo fulfillment)
   - a fun order tracker UI

## apps.fun SDK surface used
- `deployAndLaunch` (optional, for creating PIZZA)
- `quoteSwapExactETHForTokens` + `swapExactETHForTokens`
- `ERC20.balanceOf` gating tiers

## What’s currently in this folder
- `contracts/Pizza.sol`: placeholder payment sink (not apps.fun integrated)

## Recommended direction
- Keep `Pizza.sol` out of MVP path (no custom contracts required)
- Make the entire demo run on apps.fun primitives + a simple off-chain “order” form

## Next steps
- Replace ethers usage with viem/wagmi (align with other demos)
- Add `.env.example` with AppsFun addresses + token
