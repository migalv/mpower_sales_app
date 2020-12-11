import 'package:flutter/material.dart';

const background = Color(0xFFF4F4F4);

MaterialColor primarySwatch = MaterialColor(primary500.value, swatch2);
Map<int, Color> swatch2 = {
  50: primary50,
  100: primary100,
  200: primary200,
  300: primary300,
  400: primary400,
  500: primary500,
  600: primary600,
  700: primary700,
  800: primary800,
  900: primary900,
};
const primary50 = Color(0xFFFFF8E1);
const primary100 = Color(0xFFFFECB3);
const primary200 = Color(0xFFFFE082);
const primary300 = Color(0xFFFFD54F);
const primary400 = Color(0xFFFFCA28);
const primary500 = Color(0xFFFFC107);
const primary600 = Color(0xFFFFB300);
const primary700 = Color(0xFFFFA000);
const primary800 = Color(0xFFFF8F00);
const primary900 = Color(0xFFFF6F00);
const primaryMain = primary500;
const disabledColor = Color(0xFFD3BD7A);

MaterialColor secondarySwatch = MaterialColor(secondary50.value, swatch1);
Map<int, Color> swatch1 = {
  50: secondary50,
  100: secondary100,
  200: secondary200,
  300: secondary300,
  400: secondary400,
  500: secondary500,
  600: secondary600,
  700: secondary700,
  800: secondary800,
  900: secondary900,
};
const secondary50 = Color(0xFFFFFFFF);
const secondary100 = Color(0xFFF7F7F7);
const secondary150 = Color(0xFFEBEBEB);
const secondary200 = Color(0xFFDEDEDE);
const secondary300 = Color(0xFFC3C3C3);
const secondary400 = Color(0xFFAAAAAA);
const secondary500 = Color(0xFF8B8B8B);
const secondary600 = Color(0xFF717171);
const secondary700 = Color(0xFF575757);
const secondary800 = Color(0xFF3D3D3D);
const secondary900 = Color(0xFF303030);
const secondaryMain = secondary50;

/// ORDER-STOCK UNIT colors
// Online
const statusWaiting = Colors.red;
const statusReady = Color(0xFF3F51B5);
const statusLinked = Color(0xFFFFCA28);
const statusDelivering = Colors.orange;
const statusDelivered = Colors.green;
const statusMoving = Color(0xFF78909C);
const statusCanceled = Color(0xFF212121);
const statusReturned = Colors.deepPurple;
// Offline
const statusWaitingOffline = Color(0xFFFBBFBA);
const statusReadyOffline = Color(0xFFBDC4E6);
const statusLinkedOffline = Color(0x56FFCA28);
const statusDeliveringOffline = Color(0xFFFFEDB6);
const statusDeliveredOffline = Color(0xFFC2E4C3);
const statusMovingOffline = Color(0xFFD1D9DD);
const statusCanceledOffline = Color(0xFF878787);
const statusReturnedOffline = Color(0xFFB39DDB);

/// INVENTORY RECOUNT colors
// Online
const statusNotStarted = Colors.blueGrey;
const statusInProgress = Colors.lightBlue;
const statusPaused = Colors.orange;
const statusError = Colors.red;
const statusSuccess = Colors.green;
const statusFinished = Colors.black54;
const statusProcessing = Color(0xFF3F51B5);
// Offline
const statusNotStartedOffline = Color(0xFFB0BEC5);
const statusInProgressOffline = Color(0xFFE0F4FD);
const statusPausedOffline = Color(0xFFFFF2E0);
const statusSuccessOffline = Color(0xFFC2E4C3);
const statusErrorOffline = Color(0xFFFBBFBA);
const statusFinishedOffline = Colors.black54;
const statusProcessingOffline = Color(0xFF6A78C9);

/// TICKETING SYSTEM colors
// Open
const lowPriority = Color(0xFF1F9D55);
const mediumPriority = Color(0xFFF2D024);
const highPriority = Color(0xFFCC1F1a);
// Closed
const lowPriorityClosedColor = Color(0xFF416B53);
const mediumPriorityClosedColor = Color(0xFFBBA94A);
const highPriorityClosedColor = Color(0xFF8D322F);
// Offline
const lowPriorityOffline = Color(0x8A1F9D55);
const mediumPriorityOffline = Color(0x8AF2D024);
const highPriorityOffline = Color(0x8ACC1F1a);
// Chip
const lowPriorityOfflineChipColor = Color(0xFF1A8149);
const mediumPriorityOfflineChipColor = Color(0xFFDABB48);
const highPriorityOfflineChipColor = Color(0xFFB61C18);

const openTicketStatusColor = Color(0xFF2485E7);
const closedTicketStatusColor = Color(0xFF3D3D3D);

const black1 = Color(0x01000000);
const black2 = Color(0x04000000);
const black3 = Color(0x06000000);
const black4 = Color(0x09000000);
const black5 = Color(0x0B000000);
const black6 = Color(0x10000000);
const black18 = Color(0x2E000000);
const black60 = Color(0x99000000);
const black70 = Color(0xB3000000);

const errorColor = Color(0xFFB00020);

final tipCardBackgroundColor = Colors.blue.shade50;
