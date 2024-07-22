//+------------------------------------------------------------------+
//|                                             TradeManager.mq5     |
//|                        Copyright 2024, MetaQuotes Software Corp. |
//|                                     http://www.metaquotes.net/   |
//+------------------------------------------------------------------+
#property strict

#include <Trade\Trade.mqh>
#include "GUI.mqh"
#include "OrderManagement.mqh"
#include "NewsIntegration.mqh"
#include "AutomationLogic.mqh"

CTrade trade;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   EventSetTimer(1); // Set timer for updates every second
   CreateGUI();
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   EventKillTimer();
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   ManageOrders();
  }
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
   FetchNews();
   AutomationLogic();
  }
//+------------------------------------------------------------------+
