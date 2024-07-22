/*
TradeManager for MetaTrader 5
=============================

Overview
--------
TradeManager is an Expert Advisor for MetaTrader 5 that provides a graphical user interface (GUI) for managing trades,
fetching news, and implementing automated trading logic. This tool is designed to work with Bitcoin and Forex pairs.

Features
--------
- GUI with buttons for placing buy and sell orders
- Order management (opening and closing orders based on predefined logic)
- Fetching news from investing.com and forexfactory.com
- Automated trading logic based on technical indicators
- Visualization and usability enhancements
- Grid functionality and planned orders calculations
- Hotkeys for main functions (Windows & Mac keyboards)

Project Structure
-----------------
The project consists of the following files:
- TradeManager.mq5: Main file that initializes the Expert Advisor
- GUI.mqh: Handles the creation and management of the graphical user interface
- OrderManagement.mqh: Manages orders, including opening and closing orders
- NewsIntegration.mqh: Fetches news and incorporates it into the trading logic
- AutomationLogic.mqh: Implements automated trading logic based on predefined conditions

Setup and Installation
----------------------
1. Open MetaEditor (part of the MetaTrader 5 platform).
2. Create a new project or script and name it `TradeManager`.
3. Create the following files in the project directory:

    a. TradeManager.mq5
    b. GUI.mqh
    c. OrderManagement.mqh
    d. NewsIntegration.mqh
    e. AutomationLogic.mqh

4. Copy and paste the code provided into the respective files.

Project Directory Structure
---------------------------
MetaTrader 5
└── MQL5
    └── Experts
        └── TradeManager
            ├── TradeManager.mq5
            ├── GUI.mqh
            ├── OrderManagement.mqh
            ├── NewsIntegration.mqh
            ├── AutomationLogic.mqh

Compiling and Running
---------------------
1. Open `TradeManager.mq5` in MetaEditor.
2. Compile the project by clicking the "Compile" button (F7).
3. Open MetaTrader 5.
4. Navigate to the `Expert Advisors` section.
5. Attach the `TradeManager` to a chart.

Usage
-----
- Once attached to a chart, the Trade Manager GUI will appear.
- Use the Buy and Sell buttons to place orders.
- The status of orders and news updates will be displayed in the GUI.
- The Expert Advisor will automatically manage orders and execute trading logic based on the conditions defined in `OrderManagement.mqh` and `AutomationLogic.mqh`.

Customization
-------------
- Modify `GUI.mqh` to customize the graphical user interface.
- Update `OrderManagement.mqh` to change the order management logic.
- Edit `NewsIntegration.mqh` to fetch news from different sources or parse the news differently.
- Adjust `AutomationLogic.mqh` to implement different automated trading strategies.

Notes
-----
- Ensure that you have a stable internet connection to fetch news updates.
- Test the Expert Advisor in a demo account before using it in a live trading environment.
- The tool is optimized to work on a VPS with at least 1GB of memory running Windows 2012 Server.


