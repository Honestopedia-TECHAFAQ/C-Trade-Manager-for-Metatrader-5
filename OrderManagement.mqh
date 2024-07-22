void ManageOrders()
  {
   double price = SymbolInfoDouble(Symbol(), SYMBOL_BID);
   double lotSize = 0.1;

   // Example logic: Close all buy orders if the price drops below a threshold
   if (price < SomeThreshold)
     {
      CloseAllBuyOrders();
     }

   // Example logic: Close all sell orders if the price rises above a threshold
   if (price > SomeOtherThreshold)
     {
      CloseAllSellOrders();
     }
  }

void CloseAllBuyOrders()
  {
   for (int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if (OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderType() == OP_BUY)
        {
         trade.PositionClose(OrderSymbol());
        }
     }
  }

void CloseAllSellOrders()
  {
   for (int i = OrdersTotal() - 1; i >= 0; i--)
     {
      if (OrderSelect(i, SELECT_BY_POS, MODE_TRADES) && OrderType() == OP_SELL)
        {
         trade.PositionClose(OrderSymbol());
        }
     }
  }
