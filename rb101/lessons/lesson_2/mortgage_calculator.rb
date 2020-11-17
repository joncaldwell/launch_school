=begin
*****
PROBLEM
input:
  1. loan amount (integer)
  2. annual percentage interest (float)
  3. loan duration (integer)

output:
  1. monthly payment (float)

need to calculate:
  1. monthly interest rate (float)
  2. loan duration in months (integer)
  3. monthly payment (float)

mothly payment calculation
  m = p * (j / (1 - (1 + j)**(-n)))
  m = monthly payment
  p = loan amount
  j = monthly interest rate
  n = loan duration in months

*****
EXAMPLES / TEST CASES
  loan amount = 100,000
  loan term = 120 months (10 years)
  APR = 6%
  monthly payment = $1110.21

  loan amount = 500,000
  loan term = 300 months (25 years)
  APR = 3%
  monthly payment = $2371.06

BOUNDARY CASES / ERRORS
  loan amount input with $ or ,
  negative numbers
  chars/strings

*****
DATA STRUCTURES
  floats and integers, no need for arrays or hashes.

*****
ALGORITHM

GET INPUTS
  loan amount
  APR
  loan duration (years)

CALCULATIONS
  monthly interest rate (float)
    divide APR by 12

  loan duration in months (integer)
    multiply loan duration in years by 12

  monthly payment (float)
    m = p * (j / (1 - (1 + j)**(-n)))

PRINT monthly payment

=end

def prompt(message)
  puts "=> #{message}"
end

loop do
  prompt("Welcome to Mortgage Calculator 1.0!")

  prompt("What is the total loan amount?
        (exclude dollar signs and commas, ex: 550000)")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f <= 0
      prompt("Must enter positive number for loan amount.")
    else
      break
    end
  end

  prompt "What is the APR (annual interest rate)? ex: 3.2"
  annual_interest_rate = ''
  loop do
    annual_interest_rate = gets.chomp

    if annual_interest_rate.empty? || annual_interest_rate.to_f <= 0
      prompt("Must enter positive number for APR.")
    else
      break
    end
  end

  prompt "What is the duration of the loan? (in years)"
  loan_years = ''
  loop do
    loan_years = gets.chomp

    if loan_years.empty? || loan_years.to_i <= 0
      prompt("Must enter a valid number.")
    else
      break
    end
  end

  monthly_interest_rate = (annual_interest_rate.to_f / 100) / 12
  loan_months = loan_years.to_i * 12
  monthly_payment = (loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-loan_months)))).round(2)

  prompt("Monthly payment: $#{monthly_payment}")

  prompt("Do another calculation? y/n")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt("Thanks for using Mortgage Calculator!")
