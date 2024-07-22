#include <Controls\Dialog.mqh>
#include <Controls\Button.mqh>
#include <Controls\Label.mqh>

CDialog dialog;
CButton buttonBuy;
CButton buttonSell;
CLabel labelStatus;

void CreateGUI()
  {
   dialog.Create(0, "Trade Manager", 0, 10, 10, 400, 300);
   
   buttonBuy.Create(dialog, "Buy", 1, 10, 10, 80, 30);
   buttonSell.Create(dialog, "Sell", 2, 100, 10, 80, 30);
   
   buttonBuy.OnClick(OnButtonBuyClick);
   buttonSell.OnClick(OnButtonSellClick);

   labelStatus.Create(dialog, "Status: Ready", 3, 10, 50, 380, 30);
   
   dialog.Run();
  }

void OnButtonBuyClick()
  {
   trade.Buy(0.1, Symbol());
   labelStatus.Text("Status: Buy order placed");
  }

void OnButtonSellClick()
  {
   trade.Sell(0.1, Symbol());
   labelStatus.Text("Status: Sell order placed");
  }
