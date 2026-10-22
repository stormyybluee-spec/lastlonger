# R2D: Founders, goods prices, and logistics in a robot and energy era

Round 2 lane R2D. Written 2026-10-22. As-of for market data: 2026-10-15 to 2026-10-20 unless stated.
Owner question answered: Q8. Moderator questions: M13, M14, M15.
Round 1 inputs reused: R1 L4 (food dollar, robots), R1 L3 (energy prices, PJM, solar curve), R1 L5 (Hormuz, Brent), R1 Dd (food ruling).
Method: 25 web searches (budget used in full), then direct fetches of primary pages (SEC 10-K and 8-K filings, EIA, Drewry, USDA ERS). Every model is shown with inputs and labeled "model". Script: python3 -I, kept in the session scratchpad, all inputs restated in section 4 below.

---

## Answers

### Q8. Robots push labor's hourly rate down. What about products? And what happens to seasonal logistics if the petrodollar is gone or replaced in an energy-watt era?

**Answer.** Robots and cheap energy push down the part of a product's price that was already small. For a $10 mass cosmetic, everything the factory and the ship touch (materials, packaging, labor, inbound freight, duties) is about $1.76, or 17.6% of the shelf price (model on e.l.f. FY2026 10-K ratios). The retailer keeps about $4.00, marketing about $1.47, and the brand's people, warehousing and distribution about $2.30. Even a strong robot and energy shock to production saves maybe 36 cents on that $10 (model). The slices that do not shrink are shelf space, platform fees, paid attention and brand trust, and those become the toll booths. For logistics, the big surprise is that the ocean leg is tiny per unit for compact goods (about 2 cents per lipstick even at today's $10,075 per container Shanghai to New York), while the last mile is large (Amazon's own surcharge math implies an average FBA fulfillment fee of about $4.86 per unit). If land transport electrifies on solar, the biggest freight slice moves from dollar-priced oil to locally priced electricity, so goods-price shocks become smaller and more regional, but not seasonless, because seasonality comes from demand (Q4, Lunar New Year, peak season) and capacity, not from the fuel. Ocean shipping stays on dollar-priced fossil fuel the longest (DNV: 6 of 137 alternative-fuel ship orders in H1 2026 were methanol or ammonia), so a residual "dollar freight leg" survives into H2 even if oil invoicing diversifies.
- Status: Plausible. Confidence 70. Horizon: cost-stack facts H0, land-transport shift H1 to H2, ocean H2.
- Three views. Governance: freight-driven inflation (IMF: doubling shipping costs adds about 0.7 pp to CPI after about 12 months) becomes a regional grid and capacity problem rather than a global oil problem, which shifts policy from SPR releases toward power-grid buildout. Business: the founder's money goes to attention, distribution and trust, not factories, and that is where competition and pricing power sit. Ordinary person (wage or UHI): goods get somewhat cheaper (production share small) while branded goods hold price, and the household's exposure moves from pump prices to local electricity prices (R1 L3: PJM wholesale +41% in 2026).

### M13. Cost structure of consumer brands. Which costs robots cut and which they do not.

**Answer.** Public filings show that making the product is a minority of the price in cosmetics and a majority only in packaged food. e.l.f. FY2026: cost of sales 29.3% of net sales, marketing and digital $399.8M (24% of net sales), total SG&A 63%, operating margin 4.5% (10-K, T0). Estee Lauder FY2026: gross margin 75.5%, advertising, marketing, promotion and product development $3,726M (24.8% of net sales, 10-K, T0). General Mills FY2026: cost of sales 66.4%, SG&A 18.4% (8-K, T0). On top sits the channel: Ulta's gross margin is 39.1%, Walmart's about 24.9%, Amazon takes 50 to 60% of a typical private-label seller's revenue once ads are counted (Marketplace Pulse via secondary, T4), and in a Clean Clothes Campaign breakdown of a €29 T-shirt the retailer keeps almost 60% while the factory worker gets under 1% (T4). Robots cut factory, warehouse and store labor. Cheap energy cuts fuel, plastics feedstock and process heat. Neither cuts retailer margin, platform take rate, ad auction prices or the trust premium, and AI-cheap creative output tends to raise ad auction prices (Meta CPMs reported up about 20% year on year, T5) rather than lower them.
- Status: Confirmed for the cost stacks (T0 filings). Plausible for the robot and energy split. Confidence 75. Horizon H0 to H1.
- Three views. Governance: antitrust and platform-fee rules (marketplace take rates, slotting fees) matter more for consumer prices than robot policy. Business: plan for COGS deflation of a few points of retail price, and for marketing and channel costs that stay at 40 to 70% of retail. Ordinary person: commodity and store-brand goods get cheaper first (private label at a record 24% unit share in H1 2026, T4), branded goods much less.

### M14. Freight share of goods prices, bunker priced in dollars, 2026 container rates with the Hormuz disruption, autonomous trucking and electrified shipping timelines.

**Answer.** US business logistics costs were about $2.4T, 7.8% of GDP, in the 2026 CSCMP report (T4 via trade press). The 2026 war has pushed fuel, not container capacity, into crisis: Brent spot $115.22 and New York Harbor diesel $5.265 per gallon on 2026-10-20 (EIA, T3), US retail diesel $6.276 per gallon on 2026-10-19, up $2.656 (+73%) in a year (EIA, T3), Singapore VLSFO bunker about $900 per tonne on 2026-10-09, priced in dollars (T3). Drewry's composite container index was $4,485 per 40ft on 2026-10-15, about 2.6 times the $1,746 of a year earlier, with Shanghai to New York at $10,075 and Shanghai to Rotterdam at $3,522 (T3). On the ATRI 2025 cost base, the diesel move alone lifts truck cost per mile about 15% (model). Autonomous trucking is real but tiny: Aurora had $2M of Q2 2026 revenue and targets about 200 driverless trucks by end-2026 (8-K, T0/T2). Tesla began Semi deliveries in September 2026 from a plant designed for 50,000 a year (T4). Ocean decarbonization is slow: the IMO Net-Zero Framework vote was postponed in October 2025, a resumed session is pencilled for 4 December 2026, and LNG (a dollar-priced fossil fuel) took 73 of 137 alternative-fuel orders in H1 2026 (T4).
- Status: Confirmed for prices and fleet counts. Plausible for timelines. Confidence 70. Horizon: H0 prices, driverless trucking at scale H1, electrified long-haul trucking H1 to H2, ocean H2 and later.
- Three views. Governance: shipping remains the last dollar-priced energy chokepoint in the goods chain, and the IMO fight (Saudi-led adjournment, US opposition) is about who sets the price of that leg. Business: for compact goods, ocean freight is cents per unit even at war rates, while the last mile and fuel surcharges are dollars per unit, so negotiate fulfillment, not ocean. Ordinary person: freight shocks reach shelves with a lag (IMF peak after about 12 months), so 2026's freight spike is still in the 2027 price pipeline.

### M15. What sells for human founders when production is cheap: brand, trust, community, "human-made" premium evidence.

**Answer.** When production is a small and falling share of price, the scarce things are attention, distribution, and trust, and those are what founders sell. The strongest hard evidence is how big brands spend and buy: e.l.f. and Estee Lauder both spend about a quarter of net sales on marketing, e.l.f.'s four largest customers (Target 18%, Walmart 13%, Amazon 11%, Sephora 10%) took 52% of its FY2026 sales, and the acquired founder-led brand rhode added $293.5M of net sales in its first year inside e.l.f. (10-K, T0). Evidence for a "human-made" price premium is mostly stated preference: 68% of US adults would pick a human-made product over an identical AI-made one at the same price and 36% say they have punished a brand for feeling too AI-driven (vendor survey, T5), 85% say human-made art is more meaningful (WARC, T4). Behavioral evidence is thinner but points the same way in one marketplace: AI-generated 3D models are about one in six uploads at CGTrader but only 2.6% of sales (T4). I found no peer-reviewed estimate of a cash premium for human-made goods, so the premium is real as a preference and unproven as a price.
- Status: Plausible. Confidence 55. Horizon H0 to H2.
- Three views. Governance: AI-content labeling rules decide whether "human-made" can be verified, and without verification the premium leaks to fakers. Business: build a direct audience and a face the customer trusts, outsource production, and treat retailers and platforms as rented distribution. Ordinary person: a UHI or wage earner with a community and a credible story can still enter, because the capital needed for making things keeps falling, but the cost of being seen keeps rising.

---

## 1. Key findings

1. **Production is the small slice in high-value consumer goods.** On e.l.f. FY2026 ratios with an assumed 40% retailer margin, a $10 lipstick splits into retailer $4.00, brand people, warehousing, distribution and D&A $2.30, product cost $1.76 (including inbound freight and duty), marketing $1.47, operating profit $0.27 (model, T0 inputs). Estee Lauder's cost of sales is only 24.5% of net sales.
2. **Packaged food is the exception where COGS dominates.** General Mills: cost of sales 66.4% of net sales, SG&A 18.4% (T0). On a $5 cereal with a 25% retailer margin, product cost is about $2.49 (model). This is where robots, cheap energy and freight matter most. It matches R1 L4: labor is 47.1 cents of the grocery dollar (USDA ERS 2024, T0), and automation could cut grocery prices about 5 to 12% in real terms by H2 (inference, and R1 Dd warned it could be 0 to 10%).
3. **Apparel factory labor is already almost free in price terms.** Garment workers get under 1% (Clean Clothes Campaign, €29 T-shirt) to about 3% (Fair Wear, $18.25 polo) of the retail price (T4). Robot sewing cannot move apparel prices much. Retail (almost 60% in the Clean Clothes breakdown) and brand margin can.
4. **The toll booths are channel, platform and attention.** Amazon takes 50 to 60% of seller revenue with ads (T4). Amazon added a 3.5% "fuel and logistics surcharge" on FBA fees from 2026-04-17, about $0.17 per unit on average, citing the Iran war (T2 via press). That implies an average fulfillment fee of about $4.86 per unit (model: 0.17 / 0.035). Storage in Oct to Dec is $2.40 per cubic foot per month versus $0.78 in Jan to Sep, a 3.1x seasonal multiplier (T5 fee guide). TikTok Shop's referral fee is 6% on its May 2026 table, with a reported rise to 8% from 2026-08-04 that I could not confirm (T5).
5. **Ocean freight is cents per unit for compact goods even at war rates.** At Drewry's Shanghai to New York $10,075 per 40ft (2026-10-15): about $0.02 per lipstick, $0.37 per folded T-shirt, $0.77 per cereal box, $1.10 per bag of chips, $7.33 per boxed lamp (model, 55 m3 usable). Cube-to-value decides who cares about freight: bulky, low-value goods (snacks, beverages, home goods) are freight businesses, cosmetics are not.
6. **The 2026 shock is a fuel shock more than a container shock.** Retail diesel +73% year on year to $6.276 (EIA, T3). Brent spot $115.22 (EIA, 2026-10-20). The container composite is up about 2.6x on the year, but Asia to Europe rates fell for 13 straight weeks before the 2026-10-15 uptick as Suez transits resumed (Drewry, T3/T4).
7. **IMF pass-through puts the 2026 freight spike at roughly +1 pp on headline CPI over the next year.** Model: 4,485 / 1,746 = 2.57x, or 1.36 doublings, times the IMF elasticity of 0.7 pp per doubling gives about 0.95 pp, peaking about 12 months later (IMF WP/22/61 measured with the Baltic Dry Index, so this is an order-of-magnitude transfer, not a forecast).
8. **Autonomous trucking cuts the biggest line in trucking, but scale is H1.** ATRI 2025: $2.336 per mile, driver wages and benefits about $1.03 (44%), fuel about $0.48 (21%) (T4, my arithmetic). Removing the driver and adding $0.30 to $0.70 per mile of tech and remote-ops cost (assumption) lowers cost per mile 14 to 31% (model). Aurora: about 200 driverless trucks targeted by end-2026, Roush upfit run-rate of 1,000 trucks a year from October 2026, Volvo driverless start Q1 2027 (8-K, T0/T2).
9. **Electric trucks already beat diesel on energy cost per mile at 2026 prices.** Model: 2.0 kWh per mile (assumption) at $0.08 to $0.30 per kWh is $0.16 to $0.60 per mile, against about $0.84 per mile of diesel at today's price on ATRI's implied fuel economy (0.482 x 1.73). Tesla began Semi deliveries in September 2026 (T4). Energy cost is no longer the barrier. Capital cost, charging and payload are.
10. **Ocean is the stubborn dollar leg.** Bunker fuel is quoted in US dollars per tonne worldwide (Singapore VLSFO about $900, 2026-10-09, T3). Container rates are quoted in US dollars per box. In H1 2026, LNG took 73 of 137 alternative-fuel ship orders, methanol 2, ammonia 4, hydrogen 1 (DNV AFI via trade press, T4). The IMO global carbon price was postponed by a 57 to 49 vote in October 2025 and is unresolved (T4).
11. **Retailers are the biggest beneficiary of cheap production.** Store brands hit a record 24% unit share in H1 2026 and $282.8B of 2025 dollar sales (PLMA and Circana, T4). If robots make a good formula cheap to copy, the retailer who owns the shelf clones it.
12. **The founder exit route still works.** rhode, a founder-led brand, added $293.5M to e.l.f.'s FY2026 sales (T0). The reported deal value of about $1B (May 2025) is from memory, not re-verified this session. Big brands buy trust and community they cannot manufacture.

---

## 2. Cost stacks by category (where each dollar goes)

### 2a. Mass cosmetics, $10 shelf price (model on e.l.f. FY2026 10-K)
Inputs: net sales $1,636.5M, cost of sales $479.1M, SG&A $1,026.1M, marketing and digital $399.8M, operating income $73.6M (10-K, T0). Retailer margin 40% is an assumption anchored on Ulta's 39.1% gross margin (T0).

| Slice | Share of brand net sales | $ of $10 | Robots compress? | Cheap energy compresses? |
|---|---|---|---|---|
| Retailer margin | n/a | 4.00 | Partly (store and DC labor) but kept as margin | Slightly (store power) |
| Product cost: contract manufacturing, materials, packaging, inbound freight, duty | 29.3% | 1.76 | Yes, labor part | Yes, energy, plastics, freight part |
| Marketing and digital | 24.4% | 1.47 | No (AI cuts creative cost, auctions reprice) | No |
| Other SG&A: people, warehousing, distribution, merchandising, D&A | 38.3% | 2.30 | Warehousing and distribution part | Distribution fuel part |
| Operating income | 4.5% | 0.27 | n/a | n/a |

Note: FY2026 operating margin is depressed by the rhode deal (FY2025 operating income was $158.0M on $1,313.5M, about 12%). Gross margin fell from 71.2% to 70.7%, "primarily driven by tariffs, partially offset by pricing" (10-K).

Robot and energy shock (model): assume labor is 30% of product cost and robots cut it 60%, energy is 5% of product cost and halves. Saving is 1.76 x (0.30 x 0.6 + 0.05 x 0.5) = $0.36, or 3.6% of retail. Tariff policy moved e.l.f.'s gross margin by a similar order in one year.

### 2b. Prestige beauty (Estee Lauder FY2026, T0)
Gross margin 75.5% (cost of sales 24.5%). Advertising, marketing, promotion and product development $3,726M, 24.8% of $15,049M net sales. The brand spends as much on being wanted as on being made.

### 2c. Packaged food, $5 shelf price (model on General Mills FY2026 8-K)
Inputs: net sales $18,424.6M, cost of sales $12,228.9M (66.4%), SG&A $3,388.5M (18.4%) (T0). Retailer margin 25% is an assumption anchored on Walmart's 24.9% total gross margin (T4 calculation).
Result: retailer $1.25, product cost $2.49, SG&A $0.69, residual (operating profit before one-offs and other items) $0.57.
USDA ERS 2024 food dollar (T0): salaries and benefits 54.1 cents, property income 32.7, output taxes 7.2, farm production 6.7, food services 38.6. ERS notes transportation value added fell 1.5% and energy fell 7.8% in 2024 (before the 2026 war).
Robots and energy matter most here, because ingredients, plant labor, packaging, trucking and store labor are the bulk. Land rent, taxes and farm inputs do not shrink (R1 L4).

### 2d. Apparel (T4 studies)
Clean Clothes Campaign, €29 T-shirt made in Bangladesh: retailer almost 60%, brand profit about 12%, materials about 12%, transport about 8%, factory profit about 4%, worker under 1%. Fair Wear: $0.54 of an $18.25 polo (2.96%). Deloitte for Oxfam: a living wage would add about 1% to retail price.
Robot sewing saves at most a few percent of price. The fight is over the 60% retail slice, which DTC and marketplaces try to take, and then charge back as ads and fees.

### 2e. Marketplace channel (T4/T5)
Amazon: 50 to 60% of seller revenue to Amazon including ads (Marketplace Pulse, 2022 and 2024). Beauty referral 8% at $10 or under and 15% above in several 2026 guides, conflicting with others (T5, confirm in Seller Central). FBA fuel and logistics surcharge 3.5% from 2026-04-17, extended to Buy with Prime and Multi-Channel Fulfillment from 2026-05-02 (T2 via press). USPS planned an 8% base postage increase from 2026-04-26 (T4).

### 2f. Summary: compressible vs toll booth

| Slice | Typical share of retail (non-electronics) | Robot effect | Cheap energy effect | Verdict |
|---|---|---|---|---|
| Materials and ingredients | 5 to 40% (food highest) | Low | Medium (fertilizer, plastics) | Compresses slowly |
| Manufacturing labor | 1 to 10% | High | n/a | Compresses, but small |
| Packaging | a few % | Medium | Medium (resin is oil-derived) | Compresses |
| Ocean freight | 0.2 to 20% depending on cube-to-value | Low | Low until H2 (dollar bunker) | Volatile, dollar-priced |
| Trucking and last mile | 5 to 50% for DTC small parcels | High (driverless, robot sortation) | High (electric) | Compresses H1 to H2 |
| Retailer or platform margin | 25 to 60% | Low, retailer keeps savings | Low | Toll booth |
| Marketing and acquisition | 15 to 30% | Low, AI makes ads cheaper to make, not to place | None | Toll booth, possibly rising |
| Brand overhead | 10 to 25% | Medium (AI back office) | None | Compresses |
| Profit | 3 to 15% | n/a | n/a | Goes to whoever owns the toll booth |

---

## 3. Logistics in 2026: prices, seasonality, and the currency of freight

### 3a. Prices (as of mid to late October 2026)
| Item | Value | Date | Source | Tier |
|---|---|---|---|---|
| Brent spot | $115.22 per barrel | 2026-10-20 | EIA | T3 |
| WTI spot | $107.89 per barrel | 2026-10-20 | EIA | T3 |
| NY Harbor ULSD spot | $5.265 per gallon | 2026-10-20 | EIA | T3 |
| US retail diesel | $6.276 per gallon, +$2.656 y/y | 2026-10-19 | EIA | T3 |
| US retail gasoline | $4.284 per gallon, +$1.265 y/y | 2026-10-19 | EIA | T3 |
| Singapore VLSFO | about $900 per tonne (range $793 to $900 in early Oct) | 2026-10-09 | Engine | T3 |
| Drewry WCI composite | $4,485 per 40ft (+3% w/w) | 2026-10-15 | Drewry | T3 |
| Shanghai to New York | $10,075 | 2026-10-15 | Drewry | T3 |
| Shanghai to Los Angeles | $7,884 | 2026-10-15 | Drewry | T3 |
| Shanghai to Rotterdam | $3,522 | 2026-10-15 | Drewry | T3 |
| WCI composite a year earlier | $1,746 | 2025-10-23 | Drewry via trade press | T3 |
| Hormuz war-risk premium | 3.5 to 7.5% of hull value per transit, from 0.10 to 0.25% pre-war | July 2026 | Singapore MOT | T2 |
| Asia to North Europe container rates | about +120% vs pre-conflict, still about 40% below the 2024 Red Sea peak | 2026 | Singapore MOT | T2 |

### 3b. Seasonality survives any fuel regime
Seasonality comes from demand and capacity: transpacific peak season (summer to autumn), Q4 retail, Lunar New Year factory closures, and carrier blank sailings (Drewry expects six transpacific blank sailings next week). Amazon's storage price triples in Oct to Dec. Electrification and robots change the cost of peak capacity (fewer seasonal hires, robots that can run extra shifts), not the calendar of demand. A founder should still expect Q3 to Q4 freight and fulfillment premiums in any H1 or H2 world.

### 3c. Freight's share of goods prices
- Economy-wide: US logistics costs about 7.8% of GDP in the 2026 CSCMP report, down from 8.7% (T4). This includes inventory carrying costs, not just transport, and predates most of the 2026 fuel spike in its data year.
- Per unit, ocean (model, 55 m3 usable per 40ft):

| Item (packed volume) | Units per 40ft | $/unit at SH-NY $10,075 | $/unit at composite $4,485 | $/unit at Oct 2025 composite $1,746 |
|---|---|---|---|---|
| Lipstick (100 cm3) | 550,000 | 0.018 | 0.008 | 0.003 |
| Folded T-shirt (2,000 cm3) | 27,500 | 0.37 | 0.16 | 0.06 |
| Cereal box (4,200 cm3) | 13,100 | 0.77 | 0.34 | 0.13 |
| Bag of chips (6,000 cm3) | 9,170 | 1.10 | 0.49 | 0.19 |
| Boxed table lamp (40,000 cm3) | 1,375 | 7.33 | 3.26 | 1.27 |

- Per unit, trucking (model, 100 m3 per 53ft trailer, 1,000 miles at $2.69 per mile, which is ATRI's $2.336 with fuel scaled to today's diesel): lipstick $0.003, T-shirt $0.05, cereal $0.11, chips $0.16, lamp $1.08.
- Per unit, last mile: Amazon's average FBA fee implied at about $4.86 (model from the surcharge). For DTC small parcels, the last mile is by far the largest freight slice.

### 3d. Whose currency freight is priced in today
- Crude: benchmarks and most invoicing in US dollars. Saudi Arabia says it is "open to discussing" other currencies (Davos 2026, T2 via Energy Intelligence). Iranian yuan-for-passage remains unconfirmed (R1 L5, Deutsche Bank note, T4). I found no reliable 2026 figure for the yuan share of oil trade.
- Bunker: US dollars per tonne in every major hub (T3).
- Container freight: US dollars per box, including surcharges (Hapag-Lloyd $1,500 per TEU war-risk surcharge, CMA CGM $2,000 / $3,000 per TEU / FEU emergency surcharge, March 2026, T4).
- Diesel at the pump: local currency, but tracks dollar crude and diesel cracks.
- Platform fees: Amazon's surcharge is a percentage of a dollar fee in the US and Canada.
- Electricity: local currency, local market (R1 L3: PJM +41% while CAISO hit record lows in 2026).

---

## 4. Scenario: oil invoicing leaves the dollar, or solar replaces oil in transport

Three cases for a US founder selling a compact non-electronics good, with H-horizons.

**Case A. Status quo: dollar oil, oil-fueled transport (H0, base case).**
Goods-price shocks are global and synchronized, because every leg (bunker, diesel, jet fuel, plastics) keys off dollar crude. 2026 is the live test: diesel +73%, container composite about 2.6x, Amazon surcharge, USPS +8%. A US founder has no currency leg on freight. A non-US founder faces oil volatility times FX volatility.

**Case B. Oil invoicing partly shifts to yuan or other currencies (H1 plausible at the margin).**
The physical barrel is still scarce in the same places (Hormuz), so price volatility does not fall. What changes is who carries the currency risk. US importers gain an FX leg that the rest of the world used to carry. Freight quotes likely stay in dollars for a long time because ship finance, insurance, charter contracts and bunker adjustment formulas are dollar-based. Net effect for a US founder: small, and mostly through the factory price (USD/CNY at 6.67, the strongest yuan since mid-2022 per R1 L5, already makes China-made goods dearer in dollars). For a founder in an emerging market whose currency weakens against both, the double exposure gets worse, not better. Volatility is re-denominated, not removed.

**Case C. Solar and batteries replace oil in land transport (H1 start, H2 large).**
Trucking and last mile decouple from global dollar oil and recouple to local electricity. Energy cost per truck mile falls from about $0.84 (diesel now) to $0.16 to $0.60 (model), and the last mile, the largest freight slice for DTC, becomes a domestic-currency cost of electricity plus robots plus rent. Goods-price volatility from oil shocks drops in amplitude and becomes regional: a PJM capacity squeeze or a cold snap moves freight costs in one region, not the world. Ocean stays on dollar-priced fuel into H2 (LNG dominates new orders, methanol and ammonia are a few ships, the IMO carbon price is unresolved), but for compact goods it is cents per unit. Seasonality stays.

**What this means for "whose currency shipping is priced in".** In Case C the dollar share of a compact good's freight cost falls sharply because the dollar-priced leg (ocean) is the smallest per unit. For bulky goods the ocean leg is large, so bulky importers stay dollar-exposed until ocean fuel changes, which pushes them to produce near the customer. That is the mechanism by which an energy-watt era localizes manufacturing of bulky goods: not ideology, but which leg is still priced in imported dollar fuel.

---

## 5. Verdict: what still works for a human founder

Evidence-backed list, strongest first.

1. **Pick categories where production is a small share of price and value per cubic centimeter is high.** Cosmetics, skincare, fragrance, supplements, accessories. Robots and cheap energy hand you a few points of margin, and freight is cents. Avoid importing bulky low-value goods (snacks, beverages, furniture, lamps) unless you co-pack near the customer. Evidence: e.l.f. and Estee cost stacks, freight table above.
2. **Own the customer, rent everything else.** Marketing is about 25% of net sales at both e.l.f. and Estee, and Amazon takes 50 to 60% with ads. Production, fulfillment and even robots are rentable (contract manufacturers, 3PLs, robots-as-a-service at about $5,000 a month per R1 L4). A direct audience is the one asset that lowers your largest cost line.
3. **Expect the toll booths to get more expensive, not cheaper.** Ad auctions reprice when AI makes creative cheap (Meta CPMs reported +20%, CAC +31% in one network, T5). Platforms add surcharges in shocks and rarely remove them (Amazon's "until further notice"). Retailer concentration is high (e.l.f.'s top four customers are 52% of sales). Budget for it.
4. **Defend against the retailer clone.** Store brands are at a record 24% unit share. A formula is easy to copy, a face, a community and a regulatory or safety track record are not. Speed of iteration matters more when copying is cheap.
5. **Use "human" as provenance, not as a cost basis.** Stated preference for human-made is strong (68% at equal price, T5), behavioral evidence is thin but supportive (CGTrader 2.6% of sales from AI models, T4). Show who made it and why. Do not expect a large price premium just for hand labor.
6. **Treat freight and fuel as a seasonal, dollar-priced risk you hedge.** Price landed cost with buffers, contract ocean rates before peak season, avoid air in Q4, keep inventory closer to customers before Oct to Dec storage peaks. In an electrified H1 to H2 world, local power prices replace diesel as the risk to watch.
7. **The exit route is the modern seed round.** Large brands buy founder-led trust and community they cannot build (rhode inside e.l.f., T0 for its sales contribution). For the owner's Q6 question, this is the most concrete "labor to capital" route still open to an 18-year-old: build audience and trust with little capital, rent production, sell or raise against the brand.

What does not work: competing on price for commodity goods against automated chains and retailers' own brands (R1 Dd ruling, and the PLMA data). That is the product-market equivalent of the robot-hour wage cap.

---

## 6. Say/Do gaps

| Actor | Say | Do | Gap |
|---|---|---|---|
| Amazon | Surcharge is a response to fuel costs from the Iran war, absorbed "so far" | Kept "until further notice", extended to Buy with Prime and MCF | Temporary-labeled fees become permanent toll income |
| Tesla (Semi) | Volume production in 2026 | Q2 update dropped the volume-production-in-2026 forecast, deliveries began September 2026 | Usual 1 to 2 year slip (R1 L4 discount applies) |
| Aurora | "Hundreds" of driverless trucks exiting 2026 | About 200 targeted, $2M revenue in Q2 2026, $266M operating loss | Scale story is H1, not H0 |
| Shipping carriers | Higher Asia to Europe FAK rates of $4,500 to $4,800 from 19 October | Rates fell 13 weeks before the uptick as Suez capacity returned | Pricing power limited by fleet capacity |
| IMO members | Net-zero shipping by around 2050 | Postponed the framework 57 to 49 in October 2025 | Ocean leg stays fossil and dollar-priced |
| US government (Hormuz) | US is "clearing" Hormuz, 10 mb/d passing (Energy Secretary, September 2026) | Trackers report single-digit daily crossings on some days, Brent stays above $100 | Official flow claims vs market prices |

## 7. Anomalies

1. **Container rates fell while oil stayed above $100.** Default: oil shocks raise freight. Observed: Asia to Europe container rates fell 13 straight weeks into October. Explanation: container pricing is set by fleet capacity (Suez reopening, blank sailings), oil by Hormuz. Freight is two markets, fuel and space.
2. **Transpacific rates are far above Asia to Europe.** Shanghai to New York $10,075 vs Shanghai to Rotterdam $3,522. Drewry cites strong US import demand. Possibly tariff front-running after the Supreme Court struck down IEEPA tariffs on 2026-02-20 and new tariffs followed (e.l.f. 10-K). Unverified as a cause.
3. **Hormuz status is disputed.** R1 L5 counted day 234 of closure with about 5% of normal traffic. The US Energy Secretary said 10 mb/d were passing in September. Brent spot $115 says the market believes the closure more than the claim.
4. **A beauty company's gross margin moved more from tariffs than robots could ever move it.** e.l.f.'s margin fell 50 bp from tariffs in one year, comparable to the full robot-and-energy saving in my model. Trade policy is a bigger near-term cost driver than automation.
5. **Electric trucks win on energy cost exactly when diesel spikes, but adoption is capital-bound.** At 2026 diesel, energy cost per mile is about $0.84 diesel vs $0.16 to $0.60 electric (model). The constraint is truck price, charging and grid connection (the same grid bottleneck R1 L3 found for data centers).

## 8. Mechanism chains

**Chain 1: cheap production moves profit to the toll booths.**
Robots and cheap energy lower product cost → many sellers can make a comparable product → the scarce inputs are shelf space, ranking on platforms and attention → retailers, platforms and ad auctions raise prices or launch store brands → the founder's margin depends on owning demand. Test: platform take rates (Marketplace Pulse), Meta CPMs, private label share, brand gross margins vs operating margins.

**Chain 2: electrified land transport regionalizes goods inflation.**
Solar plus batteries fall in cost (R1 L3: about 20% per doubling) → electric trucks and vans win on energy cost per mile → last mile and trucking costs key off local power prices → oil shocks pass less into goods prices, local grid shocks pass more → goods inflation becomes regional, and less correlated across countries. Test: correlation between diesel and core goods CPI over time, electric share of class 8 sales, PJM vs CAISO freight rates.

**Chain 3: the dollar keeps the ocean leg longest.**
Ocean fuel stays fossil (LNG, VLSFO) into H2 → bunker and box rates stay dollar-quoted → importers of bulky goods stay dollar- and oil-exposed → bulky-goods production moves closer to customers (nearshoring, local co-packing) → the dollar's freight role shrinks with the volume of long-haul bulky trade, not by decree. Test: DNV alternative-fuel order mix, IMO NZF adoption, nearshoring share of US imports.

**Chain 4: freight shock to CPI with a lag.**
Container composite 2.6x and diesel +73% (2026) → import prices react within about two months, consumer prices peak after about 12 months (IMF) → 2027 goods CPI carries 2026 freight → combined with the Fed's hiking path (R1 L5), founders face higher landed costs and tighter consumers at the same time. Test: US import price index, core goods CPI through 2027.

## 9. Tripwires to monitor

| Tripwire | Threshold | Meaning |
|---|---|---|
| Drewry WCI composite | Back below $2,500 | Shock fading, freight no longer a margin threat |
| US retail diesel (EIA weekly) | Below $4.50 | Fuel shock over, surcharges should end (watch whether Amazon removes its 3.5%) |
| Amazon FBA surcharge | Removed or raised | Test of "temporary" toll booth |
| IMO resumed session (pencilled 2026-12-04) | NZF adopted | Global carbon price on bunker, ocean electrification timeline pulls forward |
| Aurora Q3 and Q4 2026 results | 200 driverless trucks reached, cost per mile disclosed | Driverless trucking moves from pilot to fleet |
| Tesla Semi | Quarterly delivery numbers disclosed | Electric long haul enters H1 scale |
| PLMA / Circana store brand share | Above 25% units | Retailer clone pressure rising |
| Meta and TikTok fees and CPMs | Further rises in 2027 | Attention toll rising faster than production costs fall |
| Saudi or Gulf crude invoiced in yuan (official data) | Any confirmed term contract | Case B begins |
| Electric share of new US class 8 trucks | Above 5% | Case C begins |

## 10. Open questions and gaps

1. No primary figure for the yuan share of 2026 oil trade. Saudi "open to discuss" is T2 talk only.
2. Drewry's Oct 2025 comparator ($1,746) came from a search summary of trade-press reprints, not a fetched Drewry page.
3. Amazon referral fees for beauty conflict across guides (8% vs 15% tiers). Needs the Seller Central page, which is behind login.
4. CSCMP 2026 figures come from trade-press reprints, not the report itself.
5. ATRI percentages are my arithmetic from rounded per-mile figures.
6. No peer-reviewed estimate of a cash premium for human-made consumer goods.
7. Retailer margin assumptions (40% beauty, 25% grocery) are anchored on company-wide gross margins (Ulta, Walmart), not category-level data.
8. The rhode acquisition price (about $1B) is from memory and was not re-verified.
9. General Mills does not disclose freight or advertising separately in the 8-K, so the food stack cannot split freight from ingredients.
10. Hormuz traffic in October 2026 is disputed between official and tracker sources.
11. USDA ERS 2024 food dollar shares for transportation, packaging and advertising appear only in a chart and were not extracted.

---

## Claims

| id | claim | tier | status | source (URL) | source date | as-of date | falsifier |
|---|---|---|---|---|---|---|---|
| R2D-01 | e.l.f. FY2026: net sales $1,636.5M, cost of sales $479.1M (29.3%), gross margin 70.7% (71.2% in FY2025), SG&A 63%, operating income $73.6M | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/0001600033/000160003326000020/elf-20260331.htm | 2026-05 | 2026-10-22 | Restated 10-K |
| R2D-02 | e.l.f. marketing and digital $399.8M, about 24% of FY2026 net sales | T0 | Confirmed | same 10-K | 2026-05 | 2026-10-22 | Restatement |
| R2D-03 | e.l.f. top customers FY2026: Target 18%, Walmart 13%, Amazon 11%, Sephora 10% | T0 | Confirmed | same 10-K | 2026-05 | 2026-10-22 | Restatement |
| R2D-04 | e.l.f. gross margin decline "primarily driven by tariffs, partially offset by pricing" | T0 | Confirmed | same 10-K | 2026-05 | 2026-10-22 | None |
| R2D-05 | Estee Lauder FY2026 gross margin 75.5%, advertising, marketing, promotion and product development $3,726M (24.8% of $15,049M) | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/0001001250/000100125026000041/el-20260630.htm | 2026-08 | 2026-10-22 | Restatement |
| R2D-06 | General Mills FY2026 net sales $18,424.6M, cost of sales $12,228.9M, gross margin 33.6%, SG&A 18.4% | T0 | Confirmed | https://sec.gov/Archives/edgar/data/40704/000162828026046337/a20260701ex99.htm | 2026-07-01 | 2026-10-22 | 10-K differs |
| R2D-07 | Ulta fiscal 2025 gross margin 39.1% | T0 | Confirmed | https://www.sec.gov/Archives/edgar/data/1403568/000110465926035243/ulta-20260131x10k.htm | 2026-03 | 2026-10-22 | Restatement |
| R2D-08 | Production (COGS incl. inbound freight and duty) is about 17.6% of a $10 mass cosmetic's shelf price | model on T0 | Plausible | derived from R2D-01 plus 40% retailer margin assumption | 2026-10-22 | 2026-10-22 | Category data showing retailer margin far from 40% |
| R2D-09 | A robot-and-energy shock to production saves about 3.6% of a $10 cosmetic's retail price | model | Speculative | section 2a inputs | 2026-10-22 | 2026-10-22 | Labor share of contract manufacturing cost far above 30% |
| R2D-10 | Garment workers receive under 1% to about 3% of apparel retail price, retailer almost 60% (Clean Clothes) | T4 | Plausible | https://statista.com/chart/34514/breakdown-of-the-retail-price-of-a-t-shirt , https://www.thedailystar.net/node/1728829 | various | 2026-10-22 | New audited cost study |
| R2D-11 | Amazon takes 50 to 60% of a typical seller's revenue including ads | T4 | Plausible | https://www.cpapracticeadvisor.com/2023/02/13/amazon-now-taking-half-of-sales-revenue-from-merchants-says-report/76755/ | 2023-02 / 2024-03 | 2026-10-22 | Updated Marketplace Pulse data below 45% |
| R2D-12 | Amazon 3.5% FBA fuel and logistics surcharge from 2026-04-17, about $0.17 per unit average, "until further notice", citing the Iran war | T2 via T4 | Confirmed | https://www.ecommercebytes.com/ysdj , https://www.ctvnews.ca/business/article/amazon-sellers-to-face-35-surcharge-due-to-higher-fuel-logistics-costs/ | 2026-04 | 2026-10-22 | Amazon removes it |
| R2D-13 | Implied average FBA fulfillment fee about $4.86 per unit, far above per-unit ocean freight for compact goods | model on R2D-12 | Plausible | derived | 2026-10-22 | 2026-10-22 | Amazon discloses a different average |
| R2D-14 | Drewry WCI composite $4,485 per 40ft on 2026-10-15, SH-NY $10,075, SH-LA $7,884, SH-Rotterdam $3,522 | T3 | Confirmed | https://www.drewry.co.uk/supply-chain-advisors/supply-chain-expertise/world-container-index-assessed-by-drewry | 2026-10-15 | 2026-10-22 | Drewry revision |
| R2D-15 | WCI composite was $1,746 a year earlier, so rates are about 2.6x | T3 via T4 | Plausible | https://www.hellenicshippingnews.com/drewry-world-container-index-3/ (search summary, exact page not fetched) | 2025-10-23 | 2026-10-22 | Drewry archive shows a different value |
| R2D-16 | US retail diesel $6.276 per gallon on 2026-10-19, +$2.656 y/y, gasoline $4.284 | T3 | Confirmed | https://www.eia.gov/petroleum/gasdiesel/ | 2026-10-19 | 2026-10-22 | EIA revision |
| R2D-17 | Brent spot $115.22, WTI $107.89, NYH ULSD $5.265 on 2026-10-20 | T3 | Confirmed | https://www.eia.gov/dnav/pet/pet_pri_spt_s1_d.htm | 2026-10-20 | 2026-10-22 | EIA revision |
| R2D-18 | Singapore VLSFO about $900 per tonne on 2026-10-09, priced in US dollars | T3 | Confirmed | https://engine.online/news/singapore-prices-decline-across-all-bunker-fuel-grades-8216 | 2026-10-09 | 2026-10-22 | None |
| R2D-19 | Doubling global shipping costs raises headline CPI about 0.7 pp, peaking after about 12 months | T4 (IMF staff) | Plausible | https://www.imf.org/en/publications/wp/issues/2022/03/25/shipping-costs-and-inflation-515144 | 2022-03 | 2026-10-22 | Later studies find much lower pass-through |
| R2D-20 | ATRI 2025: $2.336 per mile, driver wages 81.8 cents plus benefits about 21 cents (about 44%), fuel about 48 cents (about 21%) | T4 | Plausible | https://truckingresearch.org/2026/07/new-atri-report-details-accelerating-costs-and-low-profitability-despite-cuts/ | 2026-07 | 2026-10-22 | ATRI full report differs |
| R2D-21 | Aurora Q2 2026: $2M revenue, $266M operating loss, about 200 driverless trucks targeted by end-2026, Volvo driverless Q1 2027 | T0/T2 | Confirmed | https://www.sec.gov/Archives/edgar/data/0001828108/000182810826000075/aurora26q2shareholderlet.htm | 2026-07-29 | 2026-10-22 | Q3 letter cuts target |
| R2D-22 | Tesla Semi deliveries began September 2026, Nevada plant designed for 50,000 a year, volume production forecast dropped in Q2 update | T4 | Plausible | https://www.supplychain247.com/article/tesla-semi-high-volume-production-nevada-factory/tesla | 2026-09 | 2026-10-22 | Tesla delivery data |
| R2D-23 | DNV H1 2026: 137 alternative-fuel ship orders (-11.6%), LNG 73, methanol 2, ammonia 4, hydrogen 1 | T4 | Plausible | https://www.manifoldtimes.com/news/dnv-alternative-fuelled-vessel-orders-down-11-6-in-h1-2026/ | 2026-07 | 2026-10-22 | DNV AFI data differs |
| R2D-24 | IMO Net-Zero Framework adoption postponed one year (57 to 49, 21 abstentions) in October 2025, resumed session pencilled for 2026-12-04 | T4 | Confirmed (postponement) | https://www.worldports.org/imos-mepc-meeting-votes-to-delay-adoption-of-net-zero-framework , https://datamarnews.com/?p=69606 | 2025-10 / 2026 | 2026-10-22 | Adoption vote held earlier |
| R2D-25 | Hormuz war-risk premiums 3.5 to 7.5% of hull value per transit vs 0.10 to 0.25% pre-war, Asia to North Europe container rates about +120% vs pre-conflict | T2 | Confirmed | https://www.mot.gov.sg/news-resources/newsroom/increases-in-war-risk-insurance-premiums--marine-insurance-costs-and-freight-rates-due-to-us-iran-conflict/ | 2026 | 2026-10-22 | None |
| R2D-26 | US business logistics costs about $2.4T, 7.8% of GDP (CSCMP 2026), from 8.7% | T4 | Plausible | https://www.ajot.com/news/state-of-logistics-report-finds-volatility-is-the-new-normal | 2026-06 | 2026-10-22 | CSCMP report differs |
| R2D-27 | Store brands record 24% unit share in H1 2026, 2025 dollar sales $282.8B | T4 | Plausible | https://www.plma.com/about_industry/research_reports_publications , https://www.refrigeratedfrozenfood.com/articles/104065-us-private-label-hits-record-282b-in-sales | 2026 | 2026-10-22 | Circana data differs |
| R2D-28 | 68% of US adults prefer human-made at equal price, 36% punished a brand for feeling too AI-driven | T5 (vendor survey) | Speculative | https://www.pr.com/press-release/971818 | 2026 | 2026-10-22 | Independent survey contradicts |
| R2D-29 | AI-generated 3D models about one in six CGTrader uploads but 2.6% of sales | T4 | Plausible | https://fortune.com/2026/08/20/ai-product-fatigue-online-marketplace-ecommerce/ | 2026-08-20 | 2026-10-22 | Marketplace data update |
| R2D-30 | Saudi finance minister said the kingdom is open to discussing non-dollar oil settlement, no evidence of yuan-settled Saudi crude found | T2 via T4 | Plausible | https://www.energyintel.com/00000185-ca84-db9a-a3ef-cff7f3b50000 | 2026-03 | 2026-10-22 | Confirmed yuan term contract |
| R2D-31 | Electric truck energy cost per mile ($0.16 to $0.60) is below diesel at 2026 prices (about $0.84) | model | Plausible | inputs R2D-16, R2D-20, 2.0 kWh/mile assumption | 2026-10-22 | 2026-10-22 | Real-world kWh per mile far above 3 |
| R2D-32 | Case C: electrified land transport shifts the largest freight slice from dollar oil to local-currency electricity, making goods-price shocks smaller and more regional | inference | Speculative | sections 3 and 4 | 2026-10-22 | 2026-10-22 | Electric truck share stalls below 5% through 2035, or power prices become as volatile as diesel |
| R2D-33 | Meta CPMs up about 20% year on year, CAC up 31% in one brand network | T5 | Speculative | https://www.wickedreports.com/blog/meta-is-now-charging-to-reach-your-customer-heres-what-that-actually-costs-you | 2026 | 2026-10-22 | Meta-reported average price per ad falls |
| R2D-34 | rhode contributed $293.5M of e.l.f.'s FY2026 net sales increase | T0 | Confirmed | e.l.f. 10-K (R2D-01) via search summary | 2026-05 | 2026-10-22 | Restatement |
