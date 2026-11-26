# MC analysis: who creates money, and when Fed and Treasury actions reach the public

Lane MC (money creation), Monetary Futures desk, Round 5. Written 2026-10-24. Companion to `HSOM-notes.md` (episode notes and claims ledger) and the Rulebook draft `rb_money_creation.json`.

Method: every number below comes from an official release fetched this round (Fed H.4.1, H.6 and H.8, the NY Fed primary dealer list, the Federal Reserve Act, a 2022 Fed staff note, the Bank of England's 2014 bulletin) or from earlier desk files cited by claim id. "Model" means arithmetic on stated inputs, not data. Amounts in the T-accounts are illustrative ($100).

## Answers

### Q1. Is money only created by banks making loans?

No. Bank lending is the largest single channel in a normal year, but it is one of several. Deposits, the money the public actually spends, are created whenever a bank or the central bank acquires anything from a nonbank and pays with a new deposit, and they are destroyed whenever a nonbank pays a bank, the Fed or the Treasury in a way that cancels a deposit. The channels are: bank loans, bank purchases of securities and other assets from nonbanks, Fed asset purchases from nonbanks, Treasury spending (net of what the Treasury collects in taxes and borrows from nonbanks), the release of cash parked at the Fed (the reverse repo facility and the Treasury's own account), and interest the Fed pays that banks pass on. The drains are loan repayment, taxes, Treasury borrowing from nonbanks while the cash sits in the Treasury General Account (TGA), money funds parking cash at the Fed, cash withdrawals, and banks selling assets or issuing their own bonds and shares to nonbanks.

Sizes. In the latest year (September 2025 to September 2026, H.8) deposits at US commercial banks rose $1,225.0B, and bank loans rose $999.6B, so loans were the main engine. In 2020 to 2021 it was the reverse: deposits rose $5,452.7B (35.1%) while net bank lending added little beyond a short burst of credit-line drawdowns, because the Treasury spent about $5.9T of new borrowing directly into accounts and the Fed and banks bought most of that debt (Fed FEDS Note 2022). Status: confirmed. Confidence 90.

### Q2. Can the Fed create money through Treasuries via dealers and open market operations, and when does it stay in the upper books?

Yes, the Fed creates money whenever it buys Treasuries (or anything else): it pays with new reserves, which are central bank money. Whether new money also appears in the lower books (deposits held by the public) depends only on who ends up selling and who ends up holding the cash, not on the dealer in the middle.

- Upper books only (reserves change, public deposits do not): the Fed buys from a bank, the Fed pays interest on reserves that banks keep, a bank buys new Treasuries at auction with its reserves, a bank lends reserves to another bank, the Treasury pays coupons to the Fed or the Fed remits profits to the Treasury.
- Both books (reserves and public deposits change together): the Fed buys from a nonbank such as a pension fund, a money fund, an insurer, a foreign private investor or a broker-dealer that keeps the cash, the Treasury spends from the TGA, households and firms pay taxes, nonbanks buy new Treasuries at auction, money funds move cash into or out of the Fed's reverse repo facility, and the Fed's QT runoff when the Treasury refinances maturing Fed-held bonds with nonbank buyers.
- Deposits only (no change in total reserves): a bank lends, a bank buys a security from a nonbank, or a borrower repays.

The Fed may not buy new Treasuries from the Treasury itself. Section 14(b) of the Federal Reserve Act says government obligations "may be bought and sold without regard to maturities but only in the open market", a phrase added in 1935. So the Fed always buys in the secondary market, through its counterparties the primary dealers, from whoever is selling. Status: confirmed. Confidence 90.

## Current numbers (checked this round)

Fed H.4.1, week ended Wednesday 2026-10-21, released 2026-10-22. Weekly averages unless marked.

| Item | Level | Change on week | Change on year | Note |
|---|---|---|---|---|
| Fed holdings of Treasuries | $4,571.2B (Wed $4,572.7B) | +$1.3B | +$374.8B | Desk figure $4.57T confirmed. Bills $566.6B, up $371.1B on the year (reserve management bill buying) |
| Fed holdings of agency MBS | $1,897.3B | -$0.8B | -$187.3B | Still running off |
| Fed total assets (Wed) | $6,753.6B | -$2.0B | +$164.1B | |
| Reserve balances | $2,962.6B (Wed $2,969.5B) | -$59.5B | +$29.6B | rb-06 says "about $3.0T", now $2.96T |
| Currency in circulation | $2,486.3B | -$2.0B | +$68.7B | |
| Base money (currency plus reserves) | $5,448.9B (Wed $5,454.7B) | about -$61.5B | | Desk figure $5.51T was right for the week to 10-14 ($2,488.3B plus $3,022.1B). Update to $5.45T as of 10-21 |
| Treasury General Account | $952.0B (Wed $945.2B) | +$68.6B | +$44.0B | rb-06 says $886B mid-October, that was 10-14. Now about $950B |
| Overnight reverse repo, domestic ("others") | $0.3B | +$0.04B | -$4.5B | Essentially empty |
| Reverse repo, foreign official pool | $326.9B | -$5.0B | -$17.2B | |
| Fed deferred asset (cumulative shortfall) | $232.7B (Wed) | | | No remittances to the Treasury until it is earned back |

Money and banks:

| Item | Level | Date | Source |
|---|---|---|---|
| M2 (seasonally adjusted) | $23,342.8B | August 2026 | H.6 released 2026-09-22 |
| M2 one year earlier | $22,092.6B | August 2025 | same, so +$1,250.2B (+5.7%) |
| Currency held by the public (in M2) | $2,389.7B | August 2026 | H.6 |
| Retail money market funds (in M2) | $3,073.9B | August 2026 | H.6 |
| Commercial bank deposits | $19,636.6B | September 2026 | H.8 released 2026-10-23 (desk $19.6T confirmed) |
| Commercial bank loans and leases | $14,099.5B | September 2026 | H.8, +$999.6B on September 2025 |
| Commercial bank securities | $5,783.1B | September 2026 | H.8, +$138.6B on September 2025 |
| Primary dealers | 25 | 2026-10-24 | NY Fed list (NatWest withdrew 2026-10-16, MUFG added 2026-01-15) |
| FY2026 federal deficit | $1,992.5B | FY to 2026-09-30 | Monthly Treasury Statement (desk R5A-10) |
| Fed target range | 3.75% to 4.00% | since September 2026 | desk R5A, FOMC |

A live example of the drain: in the single week to 2026-10-21 the TGA rose $68.6B and reserves fell $59.5B. Tax receipts and auction settlements pulled money out of banks into the Treasury's account at the Fed.

## Vocabulary

- Upper books: balance sheets that only banks, the Treasury and a few institutions can use. Reserves (banks' accounts at the Fed), the TGA, reverse repo balances at the Fed. The public cannot spend these directly.
- Lower books: the public's money. Bank deposits and cash held by households, firms, funds and local governments. This is what M1 and M2 count.
- Primary market: the Treasury's auctions of new securities.
- Secondary market: trading of securities already issued, among dealers, banks, funds, foreign investors and trading firms, through interdealer brokers and electronic platforms.
- Open market operations: the Fed's purchases, sales, repos and reverse repos in that secondary market, run by the New York Fed's trading desk under FOMC direction, for the System Open Market Account (SOMA).

## Who the primary dealers are

Primary dealers are the New York Fed's trading counterparties in monetary policy. In the NY Fed's words they are expected to make markets for it on behalf of official accountholders and to "bid on a pro-rata basis in all Treasury auctions at reasonably competitive prices". The list on 2026-10-24 has 25 names: ASL Capital Markets, Bank of Montreal (Chicago Branch), Bank of Nova Scotia (New York Agency), BNP Paribas Securities, Barclays Capital, BofA Securities, Cantor Fitzgerald, Citigroup Global Markets, Daiwa Capital Markets America, Deutsche Bank Securities, Goldman Sachs, HSBC Securities (USA), Jefferies, J.P. Morgan Securities, Mizuho Securities USA, Morgan Stanley, MUFG Securities Americas, Nomura Securities International, RBC Capital Markets, Santander US Capital Markets, SMBC Nikko Securities America, Societe Generale (New York Branch), TD Securities (USA), UBS Securities and Wells Fargo Securities. NatWest Markets Securities withdrew on 2026-10-16 and MUFG Securities Americas joined on 2026-01-15.

Three facts matter for money creation:

1. Most primary dealers are broker-dealers, not banks. They are usually subsidiaries of bank holding companies, but a broker-dealer holds deposits at a clearing bank like any other nonbank firm. Only three on the list are bank branches or agencies.
2. At auctions they are the backstop bidders. Other buyers bid directly (direct bidders) or through dealers and the Fed (indirect bidders, which include foreign central banks).
3. In open market operations the Fed buys and sells only with primary dealers, but dealers often act for customers. The dealer is the pipe. What happens to deposits depends on who is at the far end of the pipe.

"Secondary dealers" (non-primary dealers) are the wider dealer market: banks, broker-dealers and principal trading firms that make markets in Treasuries without a NY Fed appointment. They trade with customers and with primary dealers, can bid at auctions without any obligation, but do not face the Fed's desk in outright operations.

## Why the Fed may not buy directly from the Treasury

- 1913 to 1935: the original Act allowed Reserve Banks to buy government obligations, and for about 18 years the Treasury sometimes borrowed directly from Reserve Banks for short periods around tax dates (Garbade 2014, NY Fed Staff Report 684).
- 1935: the Banking Act of 1935 rewrote section 14(b) so that US obligations may be bought "only in the open market". The aim was to make the Treasury face a market price and to stop it financing itself at the central bank.
- 1942: the Second War Powers Act gave a temporary exemption for direct purchases of up to $5 billion. Congress renewed it several times. The last renewal (1979) required at least five Board votes and "unusual and exigent circumstances". It was not used under that renewal and lapsed in 1981 (Garbade 2014, Liberty Street Economics 2014).
- 1942 to 1951: even without large direct buying, the Fed pegged yields at the Treasury's request (3/8% on bills from April 1942 and an implicit 2.5% cap on long bonds), buying whatever the market sold at those prices. That was indirect financing in its purest form. The Treasury-Fed Accord of 1951-03-04 ended the peg (Federal Reserve History).
- Today: the only "direct" contact is that the Fed rolls over maturing holdings by taking new securities at auction as add-ons. That swaps old bonds for new ones and gives the Treasury no new cash. Section 13(3) emergency lending (used in 2020, for example for the Municipal Liquidity Facility) is about lending to markets and other borrowers, not about buying new Treasuries.

## T-account cases

Notation: A = assets, L = liabilities. Only changes are shown. "Public deposits" means deposits held by nonbanks (households, firms, funds). The Treasury's account at the Fed (TGA) is not a public deposit and is not in M2.

### a. Bank loan to a household, and repayment

Loan of $100:

| Sector | A | L |
|---|---|---|
| Bank | Loan to household +100 | Household deposit +100 |
| Household | Deposit +100 | Loan from bank +100 |
| Fed | none | none |

Result: public deposits +100, reserves 0. No one else's deposit fell. When the household pays a shop at another bank, deposit and reserves move from Bank A to Bank B (A: reserves -100, deposits -100. B: reserves +100, deposits +100). Total reserves are unchanged. Bank A may borrow reserves from another bank or the Fed's standing repo facility, which is why reserves follow lending rather than limit it.

Repayment of $100:

| Sector | A | L |
|---|---|---|
| Bank | Loan -100 | Household deposit -100 |
| Household | Deposit -100 | Loan -100 |

Result: public deposits -100. Money created by a loan is destroyed by repayment (BoE 2014).

### b. A bank buys a Treasury (or any asset) from a nonbank

A bank buys a $100 Treasury from a pension fund:

| Sector | A | L |
|---|---|---|
| Bank | Treasury +100 | Pension fund deposit +100 |
| Pension fund | Treasury -100, deposit +100 | none |

Result: public deposits +100 with no loan. The BoE (2014) states that when banks purchase government bonds from the non-bank private sector "they credit the sellers with bank deposits". The same is true when a bank buys a building or pays a supplier. The reverse also holds: a bank selling a bond to a nonbank, or issuing its own long-term bonds or shares to a nonbank, destroys deposits.

### c. Fed purchase (QE) from a bank, via a primary dealer

The Fed buys a $100 Treasury that a bank owns. The primary dealer acts as the bank's agent, or the dealer is itself a bank branch.

| Sector | A | L |
|---|---|---|
| Fed | Treasury +100 | Bank reserves +100 |
| Bank | Treasury -100, reserves +100 | none |
| Dealer | none (agent) | none |

Result: reserves +100, public deposits 0. Money is created in the upper books only. This is why the 2008 to 2014 QE rounds raised reserves far more than deposits, and why the Ep 4 story of banks "getting currency" from the Fed is half right: they get reserves, which they cannot lend to the public as such.

Dealer nuance. If the counterparty is a broker-dealer selling from its own inventory, the Fed credits reserves to the dealer's clearing bank, which credits the dealer's deposit. That deposit is in the lower books. If the dealer then repays repo borrowing owed to a bank, the deposit is destroyed and the end state equals case c. If it repays a money fund, the deposit passes to the fund and stays in the lower books, which is case d. The rule is to follow the cash to its final holder.

### d. Fed purchase from a nonbank (pension fund), settled through a primary dealer

The Fed buys a $100 Treasury from a pension fund. A primary dealer passes the bond from the fund to the Fed and the cash from the Fed to the fund's bank.

| Sector | A | L |
|---|---|---|
| Fed | Treasury +100 | Reserves (fund's bank) +100 |
| Fund's bank | Reserves +100 | Pension fund deposit +100 |
| Pension fund | Treasury -100, deposit +100 | none |
| Dealer | in and out, net 0 | net 0 |

Result: reserves +100 and public deposits +100. Fed staff put it plainly: "When the Federal Reserve purchases securities from a nonbank seller, it creates new bank deposits" (Castro, Cavallo and Zarutskie 2022). The BoE (2014) describes QE as buying assets "mainly from non-bank financial companies". Most of the 2020 to 2022 QE worked this way.

### e. Treasury issuance at auction, then Treasury spending

e1. A nonbank (a fund or household) buys a $100 new Treasury at auction:

| Sector | A | L |
|---|---|---|
| Fund | Treasury +100, deposit -100 | none |
| Fund's bank | Reserves -100 | Fund deposit -100 |
| Fed | none | Reserves -100, TGA +100 |
| Treasury | TGA +100 | Debt +100 |

Result: public deposits -100, reserves -100, TGA +100. The money has left public hands and sits upstairs in the TGA.

e2. A primary dealer buys at auction. If the dealer is a bank branch, or finances the purchase by repo from a bank, the bank pays with reserves:

| Sector | A | L |
|---|---|---|
| Bank (or dealer funded by a bank) | Treasury +100, reserves -100 | none |
| Fed | none | Reserves -100, TGA +100 |
| Treasury | TGA +100 | Debt +100 |

Result: reserves -100, public deposits 0, TGA +100. If the dealer is a broker-dealer that resells the bond to a pension fund a few days later, the end state becomes e1 (the fund's deposit falls and the dealer's repo with the bank is repaid).

e3. Treasury spending of $100 (a Social Security payment):

| Sector | A | L |
|---|---|---|
| Treasury | TGA -100 | (expense) |
| Fed | none | TGA -100, reserves (recipient's bank) +100 |
| Recipient's bank | Reserves +100 | Household deposit +100 |
| Household | Deposit +100 | none |

Result: public deposits +100, reserves +100, TGA -100. Money returns to public hands.

### f. Deficit spending in full: who buys the debt decides

Take a $100 deficit: the Treasury spends $100 more than it taxes and borrows $100. Combine e3 with the auction case that fits the buyer.

| Who ends up holding the new $100 bond | Public deposits | Reserves | Who holds the new bond | Comment |
|---|---|---|---|---|
| Domestic households and funds (from bank deposits) | 0 | 0 | the nonbank | Deposits taken at auction return when spent. The private sector holds a new bond, so its financial wealth is up $100, but its money is not |
| Banks | +100 | 0 | the bank | Banks pay with reserves, the Treasury spends them back. New deposits appear, matched by the bank's new bond |
| The Fed, indirectly (a nonbank buys at auction, the Fed buys it from them later, case d) | +100 | +100 | the Fed | The full "monetization" result, done legally through the open market |
| A money fund using cash it had parked at the Fed's reverse repo | +100 | +100 (and reverse repo -100) | the money fund | At auction the fund's reverse repo balance becomes TGA, both upstairs. When the Treasury spends, deposits and reserves rise. This is how the drain of reverse repo from 2023 helped fund deficits without cutting deposits |
| A foreign central bank using its foreign reverse repo pool at the Fed | +100 | +100 (foreign pool -100) | the foreign central bank | Same logic as the money fund |

Rule: a deficit adds to public deposits one for one unless domestic nonbanks fund it out of their own deposits. It always adds to private financial wealth through the new bond.

### g. Taxes

A household pays $100 of tax:

| Sector | A | L |
|---|---|---|
| Household | Deposit -100 | (tax owed -100) |
| Household's bank | Reserves -100 | Deposit -100 |
| Fed | none | Reserves -100, TGA +100 |
| Treasury | TGA +100 | none |

Result: public deposits -100, reserves -100. Taxes destroy deposits. This is the deposit destruction that Ep 4 describes as taxes paid "so the Treasury can pay the bonds", without the claim that the money goes to the Fed's owners.

### h. The reverse repo facility and the TGA as drains

A money fund moves $100 from its bank account into the Fed's overnight reverse repo facility (ON RRP):

| Sector | A | L |
|---|---|---|
| Money fund | Deposit -100, ON RRP claim on Fed +100 | none |
| Fund's bank | Reserves -100 | Fund deposit -100 |
| Fed | none | Reserves -100, ON RRP +100 |

Result: bank deposits -100, reserves -100. The fund's shares do not change, so M2 (which counts retail fund shares) does not fall, but the cash is upstairs at the Fed and out of the banking system. When the fund pulls cash out to buy bills from a nonbank or at auction, the steps run in reverse.

Scale: total reverse repo was $1,831.7B in the week to 2022-03-17 (H.4.1) and rose further in 2022. In the week to 2026-10-21 the domestic part was $0.3B. The drain has been emptied, which is why bill issuance now pulls on deposits and reserves directly.

The TGA works the same way. Each dollar the TGA rises (from taxes or auction settlement before spending) is a dollar out of reserves and, if a nonbank paid, out of public deposits. In the week to 2026-10-21 the TGA rose $68.6B and reserves fell $59.5B.

### i. A stablecoin issuer buying T-bills

Step 1. A household buys $100 of a stablecoin with a bank deposit:

| Sector | A | L |
|---|---|---|
| Household | Deposit -100, stablecoin +100 | none |
| Issuer | Deposit +100 | Stablecoin +100 |
| Bank | none | Household deposit -100, issuer deposit +100 |

Step 2. The issuer buys a $100 T-bill. Three variants:

| Seller of the bill | Effect on public deposits | Effect on reserves |
|---|---|---|
| A nonbank in the secondary market | 0 (the issuer's deposit passes to the seller) | 0 |
| The Treasury at auction | -100 until the Treasury spends (into the TGA) | -100 until spent |
| A bank | -100 (the bank's bill and the issuer's deposit cancel) | 0 |

Result: stablecoins do not create bank deposits. They add a new private dollar liability outside M2 (supply about $304.5B, desk R5) backed mostly by bills, and they shift demand from bank deposits toward Treasury bills. Under the GENIUS Act, compliant issuers hold short bills, cash and repo (desk rb-bonds). If an issuer places reserves with a money fund that uses the Fed's reverse repo, deposits leave the banking system entirely (case h).

### j. Fed interest on reserves, remittances and the deferred asset

Fed pays $4 of interest on a bank's reserves:

| Sector | A | L |
|---|---|---|
| Fed | none | Reserves +4, deferred asset (negative remittances due) -4 when the Fed is losing money |
| Bank | Reserves +4 | Equity +4 (income) |

Result: reserves +4, public deposits 0 at first. Deposits rise only when the bank passes income on (interest to depositors, wages, dividends): bank equity -x, deposits +x.

Treasury pays a $5 coupon to the Fed, and the Fed remits profit:

| Step | Fed | Treasury |
|---|---|---|
| Coupon | Income +5, TGA -5 | TGA -5 |
| Remittance (when profitable) | Remittances due -5, TGA +5 | TGA +5 |

Result: no change in reserves or public deposits. Coupons paid to the Fed come back to the Treasury when the Fed is profitable. That is why the Ep 4 claim that taxes pay interest to the Fed's owners is wrong. The Fed sent $117B to the Treasury in 2015 and $107.4B in 2021 (desk R3).

When the Fed loses money, as it has since September 2022, it still creates reserves to pay interest but sends nothing to the Treasury. It books the gap as a deferred asset: $232.7B on 2026-10-21. Future profits will repay that before remittances restart. Model: at roughly 3.9% (the target range is 3.75% to 4.00%, and the rate on reserves sits inside it), interest on $2,962.6B of reserves is about $115B a year, plus about $12B on the $326.9B foreign reverse repo pool. This is the one channel where the Fed adds reserves continuously without buying anything.

## Summary table for Q2

| Action | Reserves (upper) | Public deposits (lower) | TGA |
|---|---|---|---|
| Fed buys Treasury from a bank | + | 0 | 0 |
| Fed buys Treasury from a nonbank | + | + | 0 |
| Fed buys from a broker-dealer that keeps the cash | + | + (the dealer's deposit) | 0 |
| Fed lets a Treasury mature, Treasury refinances with nonbanks (QT) | - | - | 0 net |
| Treasury auction bought by a nonbank | - | - | + |
| Treasury auction bought by a bank | - | 0 | + |
| Treasury spends | + | + | - |
| Taxes paid | - | - | + |
| Money fund moves cash into ON RRP | - | - (bank deposits) | 0 |
| Fed pays interest on reserves | + | 0, then + if passed on | 0 |
| Fed remits profit to the Treasury | 0 | 0 | + |
| Bank lends or buys from a nonbank | 0 | + | 0 |

## 2020 to 2021: deficits plus QE added deposits directly

| Measure | Before | After | Change | Source |
|---|---|---|---|---|
| M2 | $15,473.4B (Feb 2020) | $21,811.8B (Feb 2022) | +$6,338.4B, +41.0% | H.6 (2021-03-23 and 2022-03-22 releases) |
| Fed Treasury holdings | $2,515.9B (week to 2020-03-11) | $5,757.9B (week to 2022-03-16) | +$3,242.0B | H.4.1 |
| Fed MBS holdings | $1,371.8B | $2,708.4B | +$1,336.6B | H.4.1 |
| Reserve balances | $1,744.5B | $3,961.7B | +$2,217.2B | H.4.1 |
| Fed total assets | $4,311.9B | $8,954.3B | +$4,642.4B | H.4.1 |
| Bank deposits, 2019 Q4 to 2021 Q4 | | | +$5,452.7B, +35.1% | FEDS Note 2022 (Financial Accounts) |
| Net marketable Treasury issuance 2020 to 2021 | | | $5,928.5B, of which Fed $3,497.4B (59%), banks $775.6B (13.1%) | FEDS Note 2022, Table 1A |
| Agency and GSE securities 2020 to 2021 | | | net issuance $1,236.6B, banks bought $1,304.3B, Fed $1,238.7B | FEDS Note 2022, Table 1B |

The Fed staff note names four drivers (credit-line drawdowns early in 2020, Fed asset purchases, fiscal transfers to households and a jump in the saving rate) and finds households took nearly two-thirds of the deposit rise. It does not split the total by driver.

Model (not an official estimate): of the $5,928.5B of new Treasury debt, $4,273.0B (72%) ended with the Fed or banks, the two buyers whose purchases do not drain public deposits. Spending financed that way added deposits roughly one for one, which puts the fiscal-plus-QE channel at about $4T of the $5.45T deposit rise. Bank and Fed purchases of agency MBS from nonbanks and the early credit-line burst account for much of the rest, offset by more cash in wallets ($1,814.1B to $2,261.0B currency in circulation) and a larger TGA. The sequence matters for Q1: in this period, the government and the central bank, not bank lending, created most new money.

## Q1 in numbers: every channel and its rough size

| Channel | Direction for public deposits | Latest year | 2020 to 2021 |
|---|---|---|---|
| Bank loans (net) | creates | +$999.6B (H.8, Sep 2025 to Sep 2026, of which loans to nonbank financial firms +$342.3B) | small net, credit-line spike about $0.5T in early 2020, mostly repaid |
| Bank purchases of securities from nonbanks | creates | +$138.6B (H.8, same period) | Treasuries $775.6B, agency $1,304.3B (FEDS Note) |
| Fed asset purchases from nonbanks | creates deposits and reserves | Fed securities +$187.5B (Treasuries +$374.8B, MBS -$187.3B, H.4.1 year to 2026-10-21) | Treasuries +$3,242.0B, MBS +$1,336.6B |
| Treasury deficit spending net of nonbank funding | creates when funded by banks, the Fed or parked cash | FY2026 deficit $1,992.5B (gross) | net Treasury issuance $5,928.5B, 72% to Fed and banks |
| Taxes | destroys | inside the deficit figure | inside the deficit figure |
| TGA build-up | destroys while it lasts | TGA +$44.0B on the year, +$68.6B in one week | TGA rose sharply in 2020 |
| ON RRP | destroys while cash is parked | domestic use now $0.3B, the drain is empty | total reverse repo $1,831.7B by March 2022 |
| Cash withdrawals | moves deposits into notes | currency +$68.7B | currency +$446.9B |
| Fed interest on reserves | creates reserves, deposits if passed on | about $115B a year (model) | near zero (rates near zero) |
| Stablecoins | rearranges, does not create deposits | supply about $304.5B (desk R5) | small |
| Result: bank deposits | | +$1,225.0B (+6.7%) | +$5,452.7B (+35.1%) |
| Result: M2 | | +$1,250.2B (Aug 2025 to Aug 2026, +5.7%) | +$6,338.4B (Feb 2020 to Feb 2022) |

Not every row adds to the total, because rows overlap (for example a deficit funded by banks shows up in both the bank securities row and the deficit row). The table shows sizes, not a full decomposition.

## Verdicts

Q1. Money is not created only by banks making loans. Bank lending is the largest channel in an ordinary year (about $1.0T of the $1.2T deposit rise in the year to September 2026). But banks also create deposits when they buy securities, the Fed creates reserves whenever it buys anything and creates deposits too when the seller is a nonbank, and the Treasury adds deposits whenever it spends money that was not taken from nonbank deposits. In 2020 to 2021 the Treasury-plus-Fed channel created most of the $5.45T rise in deposits.

Q2. The Fed creates central bank money every time it buys a Treasury in the open market through a primary dealer. That money stays in the upper books when the final seller is a bank, and it reaches the lower books when the final seller is a nonbank. Treasury actions move money between the books: auctions and taxes pull deposits and reserves into the TGA, spending pushes them back out. The Fed cannot lend to the Treasury or buy at auction (section 14(b)), so any Fed financing of deficits is indirect, and it adds public deposits only in the sequence "nonbank buys at auction, Treasury spends, Fed later buys from a nonbank".

## Where the series is right and where it is not

Right:
- Most money is created as debt, by banks typing deposits, and repayment destroys it (Ep 3, Ep 4). BoE 2014 confirms.
- The Fed creates money out of nothing when it buys bonds (Ep 4, quoting the Boston Fed). H.4.1 shows a $6.75T balance sheet funded by reserves, currency and the TGA.
- Fed purchases of Treasuries finance deficits indirectly (Ep 4). In 2020 to 2021 the Fed absorbed 59% of net new marketable Treasuries (FEDS Note 2022).
- Currency debasement for war and public works is a long-running pattern, and the gold-standard history from 1913 to 1971 is accurate in outline (Ep 2, Ep 9, Ep 10).
- After 2008 base money mostly sat as interest-bearing reserves and the Fed steers by rates (Ep 6).

Oversimplified or outdated:
- The fixed money multiplier and "lend out 90 of every 100" (Ep 4, Ep 5). Reserve ratios have been zero since 2020-03-26 (Fed), and the BoE says reserves are not multiplied into loans.
- "The Fed prints money and gives it to the government" (the implied story in Ep 4). The Fed may buy only in the open market (section 14(b)). It pays sellers, not the Treasury, and its profits go back to the Treasury. Since 2022 its losses run the other way.
- "Taxes pay the Fed's private owners" (Ep 4). Member banks hold non-tradable stock as a condition of membership (Fed FAQ) and earnings above dividends and surplus go to the Treasury.
- "There is never enough money to pay the interest" (Ep 4). Interest is spent and recirculates.
- QE as a gift to banks (Ep 1). QE is an asset swap. Purchases from nonbanks add deposits, from banks only reserves.
- Hyperinflation and the end of the dollar "within a couple of years" (Ep 2, 3, 5, 7). Inflation came in 2021 to 2022, but not hyperinflation, and the dollar standard persists.

## Claims

| Id | Claim | Tier | Status | Source | Source date | As of | Falsifier |
|---|---|---|---|---|---|---|---|
| MC-01 | Fed holds $4,571.2B of Treasuries (weekly average), confirming the desk's $4.57T | T0 | confirmed | https://www.federalreserve.gov/releases/h41/20261022/ | 2026-10-22 | 2026-10-21 | Fed revision |
| MC-02 | Base money is $5,448.9B (currency $2,486.3B plus reserves $2,962.6B), so the desk's $5.51T was the prior week's value and should be updated to $5.45T | T0 | confirmed | same | 2026-10-22 | 2026-10-21 | Fed revision |
| MC-03 | TGA $952.0B average, +$68.6B on the week, while reserves fell $59.5B | T0 | confirmed | same | 2026-10-22 | 2026-10-21 | Fed revision |
| MC-04 | Domestic ON RRP usage is $0.3B, the foreign pool $326.9B | T0 | confirmed | same | 2026-10-22 | 2026-10-21 | Fed revision |
| MC-05 | Fed deferred asset $232.7B, so no remittances | T0 | confirmed | same, table 6 | 2026-10-22 | 2026-10-21 | Positive remittances due |
| MC-06 | M2 $23,342.8B in August 2026, +$1,250.2B (+5.7%) on a year | T0 | confirmed | https://www.federalreserve.gov/releases/h6/current/default.htm | 2026-09-22 | 2026-08 | H.6 revision |
| MC-07 | Bank deposits $19,636.6B, loans +$999.6B and securities +$138.6B in the year to September 2026 | T0 | confirmed | https://www.federalreserve.gov/releases/h8/current/default.htm | 2026-10-23 | 2026-09 | H.8 revision |
| MC-08 | There are 25 primary dealers. NatWest withdrew 2026-10-16, MUFG joined 2026-01-15 | T0 | confirmed | https://www.newyorkfed.org/markets/primarydealers | 2026-10-24 | 2026-10-24 | List change |
| MC-09 | Primary dealers must bid pro rata in all Treasury auctions at reasonably competitive prices | T0 | confirmed | same | 2026-10-24 | 2026-10-24 | NY Fed policy change |
| MC-10 | US obligations may be bought by the Fed "only in the open market" (section 14(b)) | T0 | confirmed | https://www.federalreserve.gov/aboutthefed/section14.htm | current | 2026-10-24 | Amendment |
| MC-11 | The 1942 direct-purchase exemption ($5B cap) was last renewed in 1979, unused under it, and lapsed in 1981 | T1 | confirmed | https://www.newyorkfed.org/medialibrary/media/research/staff_reports/sr684.pdf | 2014 | 2026-10-24 | Archival correction |
| MC-12 | The Treasury-Fed Accord of 1951-03-04 ended the 1942 peg (3/8% bills, 2.5% long-bond cap) | T1 | confirmed | https://www.federalreservehistory.org/essays/treasury-fed-accord | current | 2026-10-24 | n/a |
| MC-13 | Reserve requirement ratios were cut to zero effective 2020-03-26 (announced 2020-03-15) | T0 | confirmed | https://www.federalreserve.gov/monetarypolicy/reservereq.htm | current | 2026-10-24 | Board reinstates ratios |
| MC-14 | Interest on reserves authority was advanced to 2008-10-01 by the 2008 EESA | T0 | confirmed | https://www.federalreserve.gov/monetarypolicy/reserve-balances.htm | current | 2026-10-24 | n/a |
| MC-15 | A bank loan creates a matching deposit, and banks do not multiply central bank money | T1 | confirmed | BoE Quarterly Bulletin 2014 Q1 | 2014 | 2026-10-24 | n/a |
| MC-16 | Bank purchases of government bonds from nonbanks create deposits | T1 | confirmed | BoE 2014 | 2014 | 2026-10-24 | n/a |
| MC-17 | Fed purchases from nonbanks create deposits, purchases from banks do not | T1 | confirmed | https://www.federalreserve.gov/econres/notes/feds-notes/understanding-bank-deposit-growth-during-the-covid-19-pandemic-20220603.htm | 2022-06-03 | 2026-10-24 | n/a |
| MC-18 | Deposits rose $5,452.7B (35.1%) from 2019 Q4 to 2021 Q4 | T1 | confirmed | same | 2022-06-03 | 2021-Q4 | Financial Accounts revision |
| MC-19 | The Fed absorbed $3,497.4B (59%) of $5,928.5B net marketable Treasury issuance in 2020 to 2021, banks $775.6B | T1 | confirmed | same, Table 1A | 2022-06-03 | 2021-Q4 | Revision |
| MC-20 | M2 rose $6,338.4B (41.0%) from February 2020 to February 2022 | T0 | confirmed | H.6 2021-03-23 and 2022-03-22 | 2022-03-22 | 2022-02 | Revision |
| MC-21 | Fed Treasury holdings rose $3,242.0B and MBS $1,336.6B from March 2020 to March 2022 | T0 | confirmed | H.4.1 2020-03-12 and 2022-03-17 | 2022-03-17 | 2022-03-16 | n/a |
| MC-22 | About $4T of the 2020 to 2021 deposit rise came through deficit spending funded by the Fed and banks | model | plausible | MC-18, MC-19 | 2026-10-24 | 2021-Q4 | An official decomposition showing a much smaller fiscal share |
| MC-23 | Interest on reserves costs the Fed about $115B a year at current rates | model | plausible | MC-02 and the 3.75% to 4.00% range | 2026-10-24 | 2026-10-21 | Published IORB rate or Fed income statement |
| MC-24 | In the latest year bank loans (+$1.0T) were the largest single deposit channel | T0 plus model | plausible | MC-07 | 2026-10-23 | 2026-09 | Full Financial Accounts decomposition |
| MC-25 | Member banks hold non-tradable Reserve Bank stock as a condition of membership and residual earnings go to the Treasury | T0 | confirmed | https://www.federalreserve.gov/faqs/about_14986.htm | current | 2026-10-24 | n/a |

## Proposed changes to desk files

1. Rulebook rb-06, table "Three kinds of dollars": change "Bank reserves about $3.0 trillion (October 2026)" to "Bank reserves about $2.96 trillion (week to 21 October 2026)".
2. Rulebook rb-06, Treasury section: change "In mid-October 2026 it held about $886 billion" to "In the week to 21 October 2026 it averaged about $952 billion, up $69 billion in one week as taxes and auction payments came in, while bank reserves fell $60 billion."
3. Rulebook rb-06, auction paragraph: change "A group of about two dozen large banks, called primary dealers" to "A group of 25 large dealers (October 2026), called primary dealers, most of them the securities arms of big banks".
4. Desk-wide: base money $5.51T should read $5.45T as of 2026-10-21 (currency $2.49T plus reserves $2.96T). Keep $4.57T for Fed Treasuries.
5. Rulebook rb-06 myth block: add that QE adds public deposits only when the Fed buys from nonbanks (MC-17), which completes the correction of the multiplier.
6. Add the new chapter draft `rb_money_creation.json` (id rb-moneymake) after rb-bonds.
