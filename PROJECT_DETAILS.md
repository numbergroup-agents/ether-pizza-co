# Ether Pizza Co (Tier-2 Spec)

## One-liner
A meme commerce + staking demo where users buy **$PIZZA** and stake it to become a “pizzeria manager,” unlocking ordering flows, boosts, and seasonal rewards.

## Core loop (PoC)
1. User connects wallet.
2. App shows Pizza Co dashboard (TVL, managers, next “Dinner Rush”).
3. User buys $PIZZA via apps.fun (quote → swap).
4. User stakes $PIZZA to become a Manager.
5. Managers can:
   - start “Dinner Rush” events (off-chain coordination)
   - place demo orders (off-chain)
   - earn badges + leaderboard points

PoC keeps fulfillment off-chain (no real pizza delivery) but demonstrates: buy + stake + tier gating + events.

## apps.fun surface used
- `AppsFun.deployAndLaunch("Ether Pizza Co","PIZZA", supply)` (optional)
- `quoteSwapExactETHForTokens` + `swapExactETHForTokens` (buy)
- `ERC20.balanceOf` (gating)
- (Optional) simple staking contract if we want on-chain stake accounting; otherwise PoC can treat “stake” as a locked UI state + off-chain log.

## Roles / tiers
- Customer (< 1 PIZZA): browse menu + watch events
- Regular (>= 1 PIZZA): place demo orders
- Manager (>= 10 PIZZA): unlock “manage store” + event participation
- Franchise Owner (>= 100 PIZZA): early access + governance votes on next menu

## Events (PoC)
- Dinner Rush (30–60 min): managers compete to fulfill most orders (off-chain submissions)
- Happy Hour: discounted “entry” (smaller buy thresholds)
- Seasonal Drop: limited cosmetics (stickers / store skins)

## UX screens
- Landing: pitch + connect + “Get $PIZZA”
- Dashboard: holdings tier, event timer, manager leaderboard
- Buy: quote + swap
- Order: simple form (size, toppings, delivery emoji) + fake tracker
- Manage: start event, submit “fulfilled order” (off-chain)

## Data model (PoC)
Off-chain (JSON/Supabase):
- `Order`: `{ id, wallet, items, createdAt, status }`
- `Event`: `{ id, type, startsAt, endsAt }`
- `EventScore`: `{ eventId, wallet, score }`

## Risks / open questions
- If we add real staking, keep it minimal and auditable; otherwise keep PoC off-chain.
- Avoid any promise of real-world fulfillment.

## Success criteria
60-second demo:
- connect → buy 0.001 ETH of PIZZA → unlock “Order” → submit order → show event leaderboard.
