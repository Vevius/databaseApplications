# Third Normal Form (3NF) — "Nothing But the Key"

`Character_Rating` can be worked out from `Experience_Level`. That's a **TRANSITIVE dependency**. To satisfy 3NF, the rating rule is moved to its own lookup table.

---

## Table A — CHARACTERS
*(Rating column removed)*

| Character (PK) | Experience_Level (FK → RATINGS) |
| :--- | :--- |
| Arnold | 9 |
| Agent 86 | 5 |
| Mr. Secretary | 7 |
| Bad Cop | 3 |

---

## Table C — RATINGS
*(Lookup table: one row per experience level)*

| Experience_Level (PK) | Character_Rating |
| :--- | :--- |
| 1 | Newcomer |
| 2 | Newcomer |
| 3 | Newcomer |
| 4 | Rising Star |
| 5 | Rising Star |
| 6 | Rising Star |
| 7 | Blockbuster |
| 8 | Blockbuster |
| 9 | Blockbuster |

---

## Table B — CHARACTER_ABILITIES
*(Unchanged from 2NF)*

| Character (PK, FK → CHARACTERS) | Ability (PK) | Power |
| :--- | :--- | :--- |
| Arnold | one-liners | 8 |
| Arnold | explosions | 10 |
| Arnold | car chases | 7 |
| Arnold | hand-to-hand | 9 |
| Agent 86 | gadgets | 6 |
| Agent 86 | disguises | 4 |
| Mr. Secretary | negotiations | 8 |
| Mr. Secretary | hand-to-hand | 7 |
| Mr. Secretary | explosions | 5 |
| Bad Cop | interrogations | 4 |
| Bad Cop | car chases | 6 |
| Bad Cop | gadgets | 3 |
| Bad Cop | one-liners | 2 |

---

> **Check:** To find Bad Cop's rating, you now perform a **`JOIN`** from `CHARACTERS` → `RATINGS`. Each fact lives in exactly one place.