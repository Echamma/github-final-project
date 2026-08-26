# Simple Interest Calculator

A small Bash utility that calculates **simple interest** from a principal amount,
an annual rate of interest, and a time period entered by the user.

## About the Project

Simple interest is the interest earned on an original principal amount, where the
interest itself does not compound. This project provides a command line calculator
that prompts the user for the three required inputs and prints the resulting
interest along with the total amount payable.

## Formula

```
Simple Interest (SI) = (P * R * T) / 100

Total Amount = P + SI
```

Where:

| Symbol | Input field       | Description                                  |
| ------ | ----------------- | -------------------------------------------- |
| `P`    | Principal         | The original sum of money invested or loaned |
| `R`    | Rate of interest  | The annual interest rate, in percent         |
| `T`    | Time period       | The duration of the investment, in years     |

## Input Fields

The script reads the following values interactively:

1. **Principal** - the initial amount (for example, `10000`)
2. **Rate of interest** - the yearly rate as a percentage (for example, `5.5`)
3. **Time period** - the number of years (for example, `3`)

## Usage

```bash
chmod +x simple-interest.sh
./simple-interest.sh
```

### Example

```
Enter the principal amount: 10000
Enter the rate of interest (% per annum): 5.5
Enter the time period (in years): 3

Simple Interest : 1650.00
Total Amount    : 11650.00
```

## Project Structure

| File                 | Purpose                                       |
| -------------------- | --------------------------------------------- |
| `simple-interest.sh` | Bash script that computes the simple interest |
| `README.md`          | Project details and usage instructions        |
| `LICENSE`            | Apache License 2.0                            |
| `CODE_OF_CONDUCT.md` | Expected standards of behaviour               |
| `CONTRIBUTING.md`    | How to contribute to this project             |

## Requirements

- A Unix-like shell with Bash
- `bc` for floating point arithmetic

## License

This project is licensed under the Apache License 2.0. See the `LICENSE` file
for the full text.
