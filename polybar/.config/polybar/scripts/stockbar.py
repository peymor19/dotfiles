#!/usr/bin/env python3

__author__ = "Peyton Morrison"
__email__ = "peyton9148@gmail.com"
__gitlab__  = "https://gitlab.com/codeaholic/personal-projects/"

from yahoo_fin import stock_info
import argparse

def ticker(ticker):
    price = stock_info.get_live_price(ticker)
    return ticker + ': ' + str(round(price, 2))

def args():
    parser = argparse.ArgumentParser(description="Stock ticker for polybar")
    parser.add_argument('--ticker', help="Stock ticker for polybar", type=str)
    args = parser.parse_args()

    stock = ""

    # parse arguments

    stock += " " + ticker(args.ticker) + " "
    print(stock)

if __name__ == "__main__":
    args()
