// Base class for all onboarding exceptions
abstract class OnboardingException implements Exception {
  final String code;
  final String message;

  const OnboardingException(this.code, this.message);

  @override
  String toString() => '$code: $message';
}

// === Specific Exceptions ===
class EU00DoesNotExistException extends OnboardingException {
  const EU00DoesNotExistException() : super('EU00', 'Does’t Exist');
}

class EU13GuestExistsProceedException extends OnboardingException {
  const EU13GuestExistsProceedException()
    : super(
        'EU13',
        'Already Exist In Guest State, Please proceed to onboarding',
      );
}

class EU1GuestExistsOtherPartnerException extends OnboardingException {
  const EU1GuestExistsOtherPartnerException()
    : super('EU1', 'Already Exist In GUEST State with another partner.');
}

class EU2PendingStateExistsException extends OnboardingException {
  const EU2PendingStateExistsException()
    : super('EU2', 'Already Exist In PENDING State');
}

class EU14PendingOtherPartnerException extends OnboardingException {
  const EU14PendingOtherPartnerException()
    : super('EU14', 'Already Exist In PENDING State with another partner.');
}

class EU3ApprovedStateExistsException extends OnboardingException {
  const EU3ApprovedStateExistsException()
    : super('EU3', 'Already Exist In APPROVED State');
}

class EU15ApprovedOtherPartnerException extends OnboardingException {
  const EU15ApprovedOtherPartnerException()
    : super('EU15', 'Already Exist In APPROVED State with another partner.');
}

class EU6BlockedStateExistsException extends OnboardingException {
  const EU6BlockedStateExistsException()
    : super('EU6', 'Already Exist In BLOCKED State');
}

class EU17BlockedOtherPartnerException extends OnboardingException {
  const EU17BlockedOtherPartnerException()
    : super('EU17', 'Already Exist In BLOCKED State with another partner.');
}

class EU11RejectedStateExistsException extends OnboardingException {
  const EU11RejectedStateExistsException()
    : super('EU11', 'Already Exist In REJECTED State');
}

class EU16RejectedOtherPartnerException extends OnboardingException {
  const EU16RejectedOtherPartnerException()
    : super('EU16', 'Already Exist In REJECTED State with another partner.');
}

class EU12PreGuestStateExistsException extends OnboardingException {
  const EU12PreGuestStateExistsException()
    : super('EU12', 'Already exist in pre-guest state');
}

class EU23UserNotLinkedPreGuestException extends OnboardingException {
  const EU23UserNotLinkedPreGuestException()
    : super('EU23', 'User not linked with your partner id, state pre-guest');
}

class E0231DifferentMobileNumberException extends OnboardingException {
  const E0231DifferentMobileNumberException()
    : super(
        'E0231',
        'Your CNIC is already registered with a different mobile number. '
            'Please use the registered number or contact support for assistance.',
      );
}

class E0233PinEmptyException extends OnboardingException {
  const E0233PinEmptyException()
    : super(
        'E0233',
        'Transaction PIN cannot be empty. Please provide a valid PIN.',
      );
}

class E0232PinMismatchException extends OnboardingException {
  const E0232PinMismatchException()
    : super(
        'E0232',
        'The entered PIN does not match our records. Please try again.',
      );
}

class Status716IncompleteApplicationException extends OnboardingException {
  const Status716IncompleteApplicationException()
    : super('716', 'An incomplete account application with this ...');
}

class UnknownStatusCodeException extends OnboardingException {
  const UnknownStatusCodeException(super.code, super.message);
}

// === Factory method for mapping codes to exceptions ===
class OnboardingExceptionFactory {
  static OnboardingException fromCode({
    required String code,
    required String message,
  }) {
    switch (code) {
      case 'EU00':
        return const EU00DoesNotExistException();
      case 'EU13':
        return const EU13GuestExistsProceedException();
      case 'EU1':
        return const EU1GuestExistsOtherPartnerException();
      case 'EU2':
        return const EU2PendingStateExistsException();
      case 'EU14':
        return const EU14PendingOtherPartnerException();
      case 'EU3':
        return const EU3ApprovedStateExistsException();
      case 'EU15':
        return const EU15ApprovedOtherPartnerException();
      case 'EU6':
        return const EU6BlockedStateExistsException();
      case 'EU17':
        return const EU17BlockedOtherPartnerException();
      case 'EU11':
        return const EU11RejectedStateExistsException();
      case 'EU16':
        return const EU16RejectedOtherPartnerException();
      case 'EU12':
        return const EU12PreGuestStateExistsException();
      case 'EU23':
        return const EU23UserNotLinkedPreGuestException();
      case 'E0231':
        return const E0231DifferentMobileNumberException();
      case 'E0233':
        return const E0233PinEmptyException();
      case 'E0232':
        return const E0232PinMismatchException();
      case '716':
        return const Status716IncompleteApplicationException();
      case _:
        return UnknownStatusCodeException(code, message);
    }
  }
}
