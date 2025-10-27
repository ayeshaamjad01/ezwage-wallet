enum AccountStatus {
  doesNotExist('EU00', 'User record not found.'),
  guestState(
    'EU13',
    'Account exists in guest state. Please proceed to onboarding.',
  ),
  guestStateOtherPartner(
    'EU1',
    'Account exists in guest state with another partner.',
  ),
  pendingState('EU2', 'Account exists in pending state.'),
  pendingStateOtherPartner(
    'EU14',
    'Account exists in pending state with another partner.',
  ),
  approvedState('EU3', 'Account exists in approved state.'),
  approvedStateOtherPartner(
    'EU15',
    'Account exists in approved state with another partner.',
  ),
  blockedState('EU6', 'Account exists in blocked state.'),
  blockedStateOtherPartner(
    'EU17',
    'Account exists in blocked state with another partner.',
  ),
  rejectedState('EU11', 'Account exists in rejected state.'),
  rejectedStateOtherPartner(
    'EU16',
    'Account exists in rejected state with another partner.',
  ),
  preGuestState('EU12', 'Account exists in pre-guest state.'),
  preGuestNotLinked(
    'EU23',
    'User not linked with your partner ID (state: pre-guest).',
  ),
  cnicRegisteredWithDifferentNumber(
    'E0231',
    'Your CNIC is already registered with a different mobile number. Please use the registered number or contact support for assistance.',
  ),
  pinEmpty(
    'E0233',
    'Transaction PIN cannot be empty. Please provide a valid PIN.',
  ),
  pinMismatch(
    'E0232',
    'The entered PIN does not match our records. Please try again.',
  ),
  unknown('0000', 'Unknown State'),
  incompleteApplicationDifferentNumber(
    '716',
    'An incomplete account application with this CNIC but a different mobile number already exists. To continue, please use the correct mobile number.',
  );

  final String code;
  final String message;

  const AccountStatus(this.code, this.message);

  static AccountStatus fromCode(String code) {
    return AccountStatus.values.firstWhere(
      (e) => e.code == code,
      orElse: () => AccountStatus.unknown,
    );
  }

  static AccountStatus fromMessage(String message) {
    return AccountStatus.values.firstWhere(
      (e) => e.message == message,
      orElse: () => AccountStatus.unknown,
    );
  }
}

extension AccountStatusExtension on AccountStatus {
  bool get isNewUser {
    print("this");
    print(this);
    final newUserStates = [
      AccountStatus.doesNotExist,
      AccountStatus.guestState,
    ];
    return newUserStates.contains(this);
  }

  bool get userExist {
    final existStates = [AccountStatus.approvedState];

    return existStates.contains(this);// || isPinRequired;
  }

  bool get isPinRequired {
    final pinStates = [AccountStatus.pinEmpty, AccountStatus.pinMismatch];
    return pinStates.contains(this);
  }
}
