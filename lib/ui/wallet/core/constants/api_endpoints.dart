class ApiEndpoints {
  static const String baseUrlStaging = "https://ext-gw-stag.aftpk.com/";
  static const String baseUrlProduction = "https://prod-ext-gw.aftpk.com/";

  // Authentication
  static const String auth = "api/rest/auth";

  // Account Registration
  static const String checkAccount = "api/rest/user-management/check-account";
  static const String fetchAccount =
      "api/rest/user-management/external-fetch-account";
  static const String forgotPinInquiry =
      "api/rest/user-management/external-forgot-pin-inquiry";
  static const String forgotPinExecute =
      "api/rest/user-management/external-forgot-pin";
  static const String changePin =
      "api/rest/user-management/external-change-pin";
  static const String registerAccount =
      "api/rest/user-management/external-register-account";

  // Wallet Registration Rejection
  static const String walletRejectionInquiry =
      "api/rest/user-management/external-wallet-rejection-inquiry";
  static const String walletRejectionUpdate =
      "api/rest/user-management/external-wallet-rejection-update";
  static const String getSecretKYCQuestionLov =
      "api/rest/user-management/get-secret-kyc-questions-lov";

  // Account Linking
  static const String accountLinkingInquiry =
      "api/rest/user-management/edxternal-link-partnerAccount-inquiry";
  static const String accountLinkingConfirmation =
      "api/rest/user-management/external-link-partnerAccount";

  // Customer Details & Statements
  static const String getCustomerDetail =
      "api/rest/user-management/external-customer-detail";
  static const String fullCustomerStatement =
      "api/rest/money-transfer/external-create-customer-statement";
  static const String getCustomerMiniStatement =
      "api/rest/money-transfer/external-customer-statement";

  // Direct Debit
  static const String directDebitHoldFund =
      "api/rest/money-transfer/direct-debit-hold-fund";
  static const String directDebitDeductFund =
      "api/rest/money-transfer/direct-debit-deduct-fund";
  static const String directDebitHoldFundReversal =
      "api/rest/money-transfer/direct-debit-hold-fund-reversal";

  // Direct Credit
  static const String directCreditInquiry =
      "api/rest/money-transfer/external-partnerw2wcredit-titlefetch";
  static const String directCreditPayment =
      "api/rest/money-transfer/external-partnerw2wcredit-payment";

  // Wallet to Wallet
  static const String walletToWalletInquiry =
      "api/rest/money-transfer/external-walletToWallet-titlefetch";
  static const String walletToWalletPayment =
      "api/rest/money-transfer/external-walletToWallet-payment";

  // IBFT (Interbank Fund Transfer) 1st validation, 2nd ibftTransferValidation, 3 ibftPayment
  static const String walletIbftTitleFetch =
      "api/rest/money-transfer/external-walletibft-titlefetch";
  static const String ibftTransferValidation =
      "api/rest/user-management/external-ibft-transfer-validation";
  static const String ibftPayment =
      "api/rest/money-transfer/external-walletibft-payment";

  // CMS Management
  static const String getBankList =
      "api/rest/cms-management/external-bank-list";
  static const String getPurposeOfPaymentList =
      "api/rest/cms-management/external-purpose-of-payment-list";
  static const String getCitiesList =
      "api/rest/cms-management/external-city-list";

  // Wallet Info
  static const String getCustomerBalance =
      "api/rest/money-transfer/external-customer-balance";
  static const String getWalletLimits =
      "api/rest/money-transfer/get-external-user-limits";

  // GL (General Ledger)
  static const String getGLBalance = "api/rest/money-transfer/get-gl-balance";
  static const String getGLStatement =
      "api/rest/money-transfer/fetch-gl-statement";

  // Bill Payment
  static const String getBillList =
      "api/rest/cms-management/external-company-list";
  static const String getBillTitle =
      "api/rest/bill-payment/external-walletbill-title-fetch";
  static const String payBill =
      "api/rest/bill-payment/external-walletbill-payment";

  // Topup
  static const String getTelcoList =
      "api/rest/cms-management/external-telcos-list";
  static const String topupInquiry =
      "api/rest/topup/external-wallettopup-titlefetch";
  static const String topupPayment =
      "api/rest/topup/external-wallettopup-payment";

  // Telco Bundles
  static const String getTelcoBundleDetails =
      "api/rest/cms-management/external-telcos-list-detail";
  static const String telcoBundleInquiry =
      "api/rest/topup/external-telco-bundle-titlefetch";
  static const String telcoBundlePayment =
      "api/rest/topup/external-telco-bundle-payment";

  static const String encrypt = "encrypt-data";

  static const String decrypt = "decrypt-data";
}


// seperate the providers
//
