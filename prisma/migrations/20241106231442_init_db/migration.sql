-- CreateEnum
CREATE TYPE "TransactionType" AS ENUM ('Deposit', 'Expense', 'Investment');

-- CreateEnum
CREATE TYPE "TransactionCategory" AS ENUM ('Housing', 'Transportation', 'Food', 'Entertainment', 'Health', 'Utility', 'Salary', 'Education', 'Other');

-- CreateEnum
CREATE TYPE "TransactionPaymentMethod" AS ENUM ('Credit_Card', 'Debit_Card', 'Bank_Transfer', 'Bank_Slip', 'Cash', 'Pix', 'Other');

-- CreateTable
CREATE TABLE "Transaction" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "type" "TransactionType" NOT NULL,
    "amount" DECIMAL(10,2) NOT NULL,
    "category" "TransactionCategory" NOT NULL,
    "paymentMethod" "TransactionPaymentMethod" NOT NULL,
    "date" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Transaction_pkey" PRIMARY KEY ("id")
);
