# Ngenius Payment Integration

A Flutter project demonstrating the integration of Ngenius Payment Gateway.

## Overview

This project showcases the implementation of Ngenius payment gateway in a
Flutter application, allowing secure payment processing for both Android and iOS
platforms.

## Features

- Secure payment processing
- Multiple payment methods support
- Transaction status tracking
- Payment history
- Error handling
- Responsive UI

## Prerequisites

Before running this project, ensure you have the following:

- Flutter SDK (version 3.27.0 or higher)
- Dart SDK (version 3.6.0 or higher)
- Ngenius API credentials
  - API Key
  - Outlet Reference ID
  - Access Token

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/sufiyanhancod/ngenius_test.git
   ```

2. Navigate to project directory:
   ```bash
   cd ngenius_test
   ```

3. Install dependencies:
   ```bash
   flutter pub get
   ```

## Usage

1. Initialize payment service:

```dart
final paymentService = NgeniusPaymentService(
  apiKey: 'your_api_key',
  outletRef: 'your_outlet_ref',
);
```

2. Create payment request:

```dart
final request = PaymentRequest(
  amount: 100.0,
  currency: 'AED',
  reference: 'ORDER_123',
);
```

3. Process payment:

```dart
final response = await paymentService.processPayment(request);
```

## API Integration

### Payment Flow

1. Create Order
2. Get Payment URL
3. Handle Payment Response
4. Verify Transaction Status

### Error Handling

The application handles various error scenarios:

- Network errors
- Invalid credentials
- Transaction failures
- Session timeouts

## Testing

Run tests using:

```bash
flutter test
```

### Test Cards

Use these test cards for development:

- Visa: 4012001037167778
- Expiry Date: Any future date
- CVV: Any 3 digits
- Name :- test

## Deployment

1. Android:
   ```bash
   flutter build apk --release
   ```

2. iOS:
   ```bash
   flutter build ios --release
   ```

## Security Considerations

- All sensitive data is encrypted
- API keys are stored securely
- SSL pinning is implemented
- Payment data is not stored locally

## Troubleshooting

Common issues and solutions:

1. Payment Declined: Verify test card details
2. Network Error: Check internet connection
3. Invalid Credentials: Verify API keys

## Contributing

1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Create Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file
for details.

## Support

For support, email: info@hancod.com

## Acknowledgments

- Ngenius Payment Gateway
- Flutter Team
- Contributors
