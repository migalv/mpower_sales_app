/// All the different types of payments MPower offers
enum PaymentMethod {
  // ignore: constant_identifier_names
  PMECPayroll,
  // ignore: constant_identifier_names
  Cash,
  // ignore: constant_identifier_names
  MPowerLoan,
  // ignore: constant_identifier_names
  SCECredit,
  // ignore: constant_identifier_names
  RICCredit,
  // ignore: constant_identifier_names
  XtendaLoan,
  // ignore: constant_identifier_names
  ZanacoLoan,
  // ignore: constant_identifier_names
  Invoice,
}

// @freezed
// abstract class PaymentMethod implements _$PaymentMethod {
//   factory PaymentMethod._(String label, int index) = _PaymentMethod;

//   const factory PaymentMethod.pmecPayroll() = PaymentMethod._("" , 0);
//   const factory PaymentMethod.cash() = PaymentMethod._("" , 0);
//   const factory PaymentMethod.mPowerLoan() = PaymentMethod._("" , 0);
//   const factory PaymentMethod.sceCredit() = PaymentMethod._("" , 0);
//   const factory PaymentMethod.ricCredit() = PaymentMethod._("" , 0);
//   const factory PaymentMethod.xTendaLoan() = PaymentMethod._("" , 0);
//   const factory PaymentMethod.zanacoLoan() = PaymentMethod._("" , 0);
//   const factory PaymentMethod.invoid() = PaymentMethod._("" , 0);
// }
