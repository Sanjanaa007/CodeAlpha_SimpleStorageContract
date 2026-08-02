# CodeAlpha_SimpleStorageContract
# 🔢 SimpleStorage — Increment/Decrement Smart Contract

> A beginner-friendly Solidity smart contract that stores a single number on-chain and lets you increment or decrement it. Built and tested on **Remix IDE**.

![Solidity](https://img.shields.io/badge/Solidity-%5E0.8.20-363636?logo=solidity)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Tested%20on%20Remix-brightgreen)

---

## 📌 Project Overview

This is **Task 1** of my CodeAlpha internship — a simple storage contract. The goal: store a number on the blockchain and provide functions to increase or decrease it, with the value readable by anyone at any time.

It's the "Hello World" of Solidity — small, but it covers the core building blocks every contract uses: state variables, public getters, and external functions.

---

## ✨ Features

| Feature | Description |
|---|---|
| 🔢 On-chain Storage | Stores an `int256` value permanently on the blockchain |
| ➕ Increment | Increases the stored value by 1 |
| ➖ Decrement | Decreases the stored value by 1 |
| 👀 Public Read Access | Value readable via the auto-generated getter *and* an explicit `getValue()` function |

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| [Solidity](https://soliditylang.org/) `^0.8.20` | Smart contract language |
| [Remix IDE](https://remix.ethereum.org/) | Writing, compiling, deploying, and testing |
| Remix VM (Cancun) | Local test blockchain — no real ETH needed |

---

## 📂 Contract Structure

```
SimpleStorage.sol
├── int256 public value   // the stored number
├── increment()            // value += 1
├── decrement()             // value -= 1
└── getValue()              // explicit read function
```

---

## 🔑 Core Functions

| Function | Access | Description |
|---|---|---|
| `value` | `public` (auto getter) | Returns the current stored value |
| `increment()` | `external` | Adds 1 to `value` |
| `decrement()` | `external` | Subtracts 1 from `value` |
| `getValue()` | `external view` | Explicitly returns the current stored value |

---

## 🤔 Why `int256` instead of `uint256`?

`int256` allows the value to go negative when decrementing below 0 — which makes sense for a counter that should never crash. If a strictly non-negative counter is needed instead, swapping to `uint256` works too, but decrementing below 0 will then revert.

---

## 🚀 Deploying & Testing on Remix

| Step | Action |
|---|---|
| 1 | Open [remix.ethereum.org](https://remix.ethereum.org/), create `SimpleStorage.sol`, paste the contract code |
| 2 | Go to **Solidity Compiler** tab → select `0.8.20+` → click **Compile** |
| 3 | Go to **Deploy & Run Transactions** tab → set Environment to **Remix VM (Cancun)** → click **Deploy** |
| 4 | Under **Deployed Contracts**, click `value` (the blue button) → confirm it starts at `0` |
| 5 | Click `increment` a few times → click `value` again → confirm it went up each time |
| 6 | Click `decrement` → click `value` again → confirm it went back down |
| 7 | Call `getValue()` → confirm it returns the same number as `value` |

---

## ✅ Test Results

| Test Case | Expected Result | Outcome |
|---|---|---|
| Initial value | `0` | ✅ Passed |
| Call `increment()` 3 times | Value becomes `3` | ✅ Passed |
| Call `decrement()` once | Value becomes `2` | ✅ Passed |
| Call `getValue()` | Matches `value` getter | ✅ Passed |

---

## 📚 References

- [Solidity Documentation](https://docs.soliditylang.org/)
- [Remix IDE Documentation](https://remix-ide.readthedocs.io/)
- [Solidity State Variables](https://docs.soliditylang.org/en/latest/structure-of-a-contract.html#state-variables)

---

## 🎓 About This Project

This project is part of my **CodeAlpha Blockchain Development Internship**, focused on building practical, testable smart contracts from scratch and understanding core Solidity concepts.

**Author:** K. Sanjana — [LinkedIn](https://www.linkedin.com/in/sanjanakarthyy/-linkedin-handle)

---

## 📄 License

This project is licensed under the **MIT License**.
